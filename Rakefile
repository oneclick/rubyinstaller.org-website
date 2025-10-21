require "open-uri"
require "yaml"
require "digest"

def read_filerefs
  YAML.safe_load(File.read("_data/downloads.yaml", encoding: "utf-8"))
end

def write_filerefs(filerefs)
  File.write("_data/downloads.yaml", YAML.dump(filerefs))
end

def tokens
  if File.exist?(".token.yml")
    YAML.safe_load(File.read(".token.yml"))
  end
end

def github_token
  tokens&.[]('github')
end

def sign_card_password
  tokens&.[]('sign_card_password')
end

def github_client
  require "octokit"
  Octokit::Client.new(access_token: github_token)
end

def new_github_assets(repo: "oneclick/rubyinstaller2", filerefs: read_filerefs)
  client = github_client

  all_releases = client.releases(repo).reject{|r| r.prerelease }
  all_assets = all_releases.flat_map do |r|
    r.assets.reject{|a| a.browser_download_url.end_with?(".asc") }
  end

  new_assets = all_assets.reject do |a|
    filerefs.find{|fr| fr['href'] == a.browser_download_url }
  end

  new_assets
end

def upload_github_exe_asset(fr, repo: "oneclick/rubyinstaller2")
  client = github_client

  old_asset_asc = nil
  old_asset = nil
  release = client.releases(repo).find do |r|
    old_asset_asc = r.assets.find{|a| a.browser_download_url == fr['gpgsign'] }
    old_asset = r.assets.find{|a| a.browser_download_url == fr['href'] }
  end
  raise "exe file doesn't exist on github: #{fr['href']}" unless old_asset
  raise "asc file doesn't exist on github: #{fr['gpgsign']}" unless old_asset_asc

  fname = release_path(fr["href"])
  fnameasc = release_path(fr["gpgsign"])
  raise "exe file doesn't exist: #{fname}" unless File.exist?(fname)
  raise "asc file doesn't exist: #{fnameasc}" unless File.exist?(fnameasc)

  puts "Delete old #{old_asset.name}"
  client.delete_release_asset(old_asset.url)
  puts "Delete old #{old_asset_asc.name}"
  client.delete_release_asset(old_asset_asc.url)

  print "Uploading #{fname} (#{File.size(fname)} bytes) ... "
  retries = 0
  begin
    asset = client.upload_asset(release.url, fname, content_type: "application/vnd.microsoft.portable-executable")
  rescue Octokit::ServerError, Faraday::TimeoutError => err
    raise if (retries+=1) > 2
    puts "Retry #{retries} after error: #{err}"
    retry
  else
    puts "OK"
  end

  print "Uploading #{fnameasc} (#{File.size(fnameasc)} bytes) ... "
  asset_asc = client.upload_asset(release.url, fnameasc, content_type: "application/pgp-signature")
  puts "OK"

  fr["href"] = asset.browser_download_url
  fr["gpgsign"] = asset_asc.browser_download_url
end

def release_path(filename)
  File.join("_releases", File.basename(filename))
end

def ensure_downloaded(href)
  filename = File.basename(href)
  filepath = release_path(href)

  unless File.exist?(filepath) && File.size(filepath)>0
    puts "downloading file: #{filename}"
    data = OpenURI.open_uri(href, "rb", &:read)
    File.binwrite(filepath, data)
  end

  return filename, filepath
end

def calc_hash(filepath)
  filecontent = File.binread(filepath)
  Digest::SHA256.hexdigest(filecontent)
end

def asset_to_attrs(asset)
  filetype = case asset.name
    when /rubyinstaller-devkit.*\.exe$/i then "ridkexe_to_sign"
    when /rubyinstaller.*\.exe$/i then "rubyinstallerexe_to_sign"
    when /rubyinstaller.*\.7z$/i then "rubyinstaller7z"
    else raise "unknown asset name #{asset.name.inspect}"
  end

  name = case asset.name
    when /rubyinstaller(-devkit)?-([-\d\.]+)-([x\d]+|arm)\.(7z|exe)$/ then $1 ? "Ruby+Devkit #{$2} (#{$3})" : "Ruby #{$2} (#{$3})"
    else raise "unknown asset name #{asset.name.inspect}"
  end

  aschref = asset.browser_download_url + ".asc"
  ascfilename, ascfilepath = ensure_downloaded(aschref)
  filename, filepath = ensure_downloaded(asset.browser_download_url)

  # Verify the integrity of the downloaded file
  unless system("gpg --verify #{ascfilepath} #{filepath}")
    raise "failed to verify signature of file: #{filename}"
  end

  # ... before calculating the hash
  hash = calc_hash(filepath)

  {
    "filetype" => filetype,
    "href" => asset.browser_download_url,
    "name" => name,
    "sha256" => hash,
    "gpgsign" => aschref,
  }
end

namespace "release" do
  desc "Fill downloads.yml with missing releases retrieved from github"
  task "add" do
    filerefs = read_filerefs
    new_assets = new_github_assets(filerefs: filerefs)
    new_assets.reverse_each do |a|
      attrs = asset_to_attrs(a)
      puts "Add new release file: #{attrs.inspect}"
      filerefs.unshift(attrs)
    end
    write_filerefs(filerefs)
  end

  desc "Add a code signature to all downloaded exe files and overwrite it on github"
  task "sign" do
    filerefs = read_filerefs
    filerefs.select do |fr|
      fr["filetype"] =~ /_to_sign$/
    end.each do |fr|
      fname = release_path(fr["href"])

      password = sign_card_password || raise("no password for the signature card in .token.yml")

      old_file = "#{fname}.unsigned.exe"
      if File.exist?(old_file)
        puts "Exe file #{fname} is already signed"
      else
        puts "Add signature to exe file #{fname}"
        File.rename(fname, old_file)
        sh "osslsigncode sign -verbose -pkcs11engine /usr/lib/x86_64-linux-gnu/engines-3/libpkcs11.so -pkcs11module _codesign/certum/sc30pkcs11-3.0.6.71-MS.so -certs _codesign/certum/1a5aab51a6c1a3b8a654d362603e397c.pem -key 692f6370091be0eda8670b52f877fa76995dae8f -h sha256  -pass #{password.inspect} -t http://time.certum.pl/ -in #{old_file} -out #{fname}"

        sh "osslsigncode verify #{fname}"
      end

      old_fileasc = "#{fname}.unsigned.asc"
      if File.exist?(old_fileasc)
        puts "Exe file #{fname} is already gpg signed"
      else
        puts "Re-sign changed exe file with gpg"
        File.rename("#{fname}.asc", old_fileasc)
        sh "gpg --verbose --detach-sign --armor #{fname}"
      end

      if fr["filetype"] =~ /(.*)_to_sign$/
        fr["filetype"] = $1
      end

      puts "Re-calc SHA256 hash of #{fname}"
      fr["sha256"] = calc_hash(fname)

      puts "Upload changed exe file to github"
      upload_github_exe_asset(fr)

      write_filerefs(filerefs)
    end
  end
end

CONTENT_TYPE_FOR_EXT = {
  ".exe" => "application/vnd.microsoft.portable-executable",
  ".asc" => "application/pgp-signature",
  ".7z" => "application/zip",
  ".yml" => "application/x-yaml",
}

# This task was once used to migrate all old rubyinstaller release files from bintray to github.
namespace "bintray" do
  task "upload" do
    filerefs = read_filerefs

    client = github_client
    repo = "oneclick/rubyinstaller"
    all_releases = client.releases(repo, per_page: 100)

    filerefs.select{|fr| fr['href'] =~ /bintray/ }.each do |fr|
      fname = File.basename(fr['href'])
      fname_local = "_releases/#{fname}"
      fhash = calc_hash(fname_local)
      ehash = fr['sha256']

      raise "hashes don't match: #{fname}: #{fhash} != #{ehash}" if ehash && ehash.downcase != fhash.downcase

      rel_name = fname[/ruby(installer)?-\d+\.\d+\.\d+(-p\d+)?/] || fname[/DevKit(-tdm)?-(32-|64-)?\d+\.\d+\.\d+(-p\d+)?/i]
      if rel_name
        tag_name = rel_name.gsub("installer", "")
        headline = tag_name.sub("ruby", "Ruby").sub("-", " ")
        puts "release #{headline} (#{rel_name}): #{fname}"

        release = all_releases.find{|r| r.tag_name == tag_name }
        unless release
          puts "Create new release #{headline} tag: #{tag_name}"
          release = client.create_release(repo, tag_name,
                                          target_commitish: "master",
                                          name: headline,
                                          body: "",
                                          draft: false,
                                          prerelease: false
                                        )
          all_releases << release
        end

        all_assets = all_releases.flat_map do |r|
          r.assets.reject{|a| a.browser_download_url.end_with?(".asc") }
        end

        old_assets = client.release_assets(release.url)

        if asset=old_assets.find{|a| a.name == File.basename(fname) }
          puts "Asset already present #{File.basename(fname)}"
        else
          print "Uploading #{fname} (#{File.size(fname_local)} bytes) ... "
          asset = client.upload_asset(release.url, fname_local, content_type: CONTENT_TYPE_FOR_EXT[File.extname(fname)])
          puts "OK: #{asset.browser_download_url}"
        end

        fr["sha256"] ||= fhash
        fr["href"] = asset.browser_download_url

        write_filerefs(filerefs)
      else
        puts "unknown file #{fname}"
      end
    end
  end
end

namespace "signtool" do
  desc "List keys from PKCS11 signature stick"
  task "list-keys" do
    require "pkcs11"
    require "openssl"

    pkcs11 = PKCS11.open("_codesign/certum/sc30pkcs11-3.0.6.71-MS.so")
    s = pkcs11.active_slots.last.open
    s.login(:USER, sign_card_password.to_s)
    s.find_objects(CLASS: PKCS11::CKO_PRIVATE_KEY).to_enum.with_index do |obj, kidx|
      puts "========== Key #{kidx} =========="
      puts "ID: #{obj[:ID].unpack1("H*")}"
      puts "Modulus: #{obj[:MODULUS][0..7].unpack1("H*")}...#{obj[:MODULUS][-8..-1].unpack1("H*")}"

      # Show other attributes:
      # puts "SUBJECT: #{OpenSSL::X509::Name.new(obj[:SUBJECT])}" if obj[:SUBJECT]
      # puts "LABEL: #{obj[:LABEL]}"
      # PKCS11.constants.grep(/^CKA_/).each do |at|
      #   puts "#{at}: #{obj[PKCS11.const_get(at)].inspect}" rescue nil
      # end
    end
  end
end
