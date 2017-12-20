require "yaml"
require "open-uri"
require "fileutils"
require "digest"

bintray_file = ARGV[0]
bintray_hashs = {}
if bintray_file
  File.read(bintray_file, encoding: "utf-8").scan(/^([0-9a-f]{32}|[0-9a-f]{64}) \*([-\.\w]+)$/i) do |hash, file|
    bintray_hashs[file] = hash
  end
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

def read_filerefs
  YAML.safe_load(File.read("_data/downloads.yaml", encoding: "utf-8"))
end

def write_filerefs(filerefs)
  File.write("_data/downloads.yaml", YAML.dump(filerefs))
end

FileUtils.mkdir_p release_path("")

filerefs = read_filerefs
filerefs.select do |fileref|
  !fileref["sha256"]
end.each do |fileref|
  filename, filepath = ensure_downloaded(fileref["href"])

  hash_bintray = bintray_hashs[filename]
  if hash_bintray
    filecontent = File.binread(filepath)
    hash_file = case hash_bintray.length
      when 32 then Digest::MD5.hexdigest(filecontent)
      when 64 then Digest::SHA256.hexdigest(filecontent)
    end

    if hash_bintray.downcase == hash_file.downcase
      puts "hash OK: file: #{filename}"
      fileref["sha256"] = Digest::SHA256.hexdigest(filecontent)
      write_filerefs(filerefs)
    else
      puts "hash different: file: #{filename} bintray: #{hash_bintray} download: #{hash_file}"
    end
  else
    puts "file not on bintray: #{filename}"
  end
end


filerefs.select do |fileref|
  !fileref["gpgsign"]
end.each do |fileref|
  filename, filepath = ensure_downloaded(fileref["href"])
  ascfilename, ascfilepath = begin
    ensure_downloaded(fileref["href"] + ".asc")
  rescue OpenURI::HTTPError => err
    puts "unable to download signature of file: #{filename}"
  end

  if fileref["sha256"] && !ascfilepath
    # already verified by hash

    # Enable this, when the signature files can be uploaded next to the download file:
#     if system("gpg --detach-sign --armor --local-user 0xF98B8484BE8BF1C5 #{filepath}")
#       puts "signed file: #{filename}"
#
#       fileref["gpgsign"] = fileref["href"] + ".asc"
#       write_filerefs(filerefs)
#     else
#       puts "unable to sign file: #{filename}"
#     end
  elsif ascfilepath
    # not yet verified -> try to verify by gpg signature
    if system("gpg --verify #{ascfilepath} #{filepath}")
      puts "signature verified of file: #{filename}"

      filecontent = File.binread(filepath)
      fileref["sha256"] = Digest::SHA256.hexdigest(filecontent)
      fileref["gpgsign"] = fileref["href"] + ".asc"
      write_filerefs(filerefs)
    else
      puts "failed to verify signature of file: #{filename}"
    end
  else
    puts "unable to verify correctness of file: #{filename}"
  end
end
