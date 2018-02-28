require "open-uri"
require "yaml"

def read_filerefs
  YAML.safe_load(File.read("_data/downloads.yaml", encoding: "utf-8"))
end

def write_filerefs(filerefs)
  File.write("_data/downloads.yaml", YAML.dump(filerefs))
end


def new_github_assets(repo: "oneclick/rubyinstaller2", filerefs: read_filerefs)
  require "octokit"

  client = Octokit::Client.new(access_token: ENV['DEPLOY_TOKEN'])

  all_releases = client.releases(repo).reject{|r| r.prerelease }
  all_assets = all_releases.flat_map do |r|
    r.assets.reject{|a| a.browser_download_url.end_with?(".asc") }
  end

  new_assets = all_assets.reject do |a|
    filerefs.find{|fr| fr['href'] == a.browser_download_url }
  end

  new_assets
end

def release_path(filename)
  File.join("_releases", filename)
end

def ensure_downloaded(href)
  filename = File.basename(href)
  filepath = release_path(filename)

  unless File.exist?(filepath) && File.size(filepath)>0
    puts "downloading file: #{filename}"
    data = OpenURI.open_uri(href, "rb", &:read)
    File.binwrite(filepath, data)
  end

  return filename, filepath
end

def asset_to_attrs(asset)
  filetype = case asset.name
    when /rubyinstaller.*\.exe$/i then "rubyinstallerexe"
    when /rubyinstaller.*\.7z$/i then "rubyinstaller7z"
    else raise "unknown asset name #{asset.name.inspect}"
  end

  name = case asset.name
    when /rubyinstaller-([-\d\.]+)-([x\d]+)\.(7z|exe)$/ then "Ruby #{$1} (#{$2})"
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
  filecontent = File.binread(filepath)
  hash = Digest::SHA256.hexdigest(filecontent)

  {
    "filetype" => filetype,
    "href" => asset.browser_download_url,
    "name" => name,
    "sha256" => hash,
    "gpgsign" => aschref,
  }
end

namespace "release" do
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
end
