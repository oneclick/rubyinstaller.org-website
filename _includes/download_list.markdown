## RubyInstallers <a id="archive" href="{{ "/downloads/archives" | relative_url }}">Archives</a>


Not sure what version to download? Please read the right column for recommendations.

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubyinstallerexe" | where: "show", "true") %}
  {% include downloadlinks.html dls=dls %}
</ul>

## Other Useful Downloads

### 7-Zip Archives

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubyinstaller7z" | where: "show", "true") %}
  {% include downloadlinks.html dls=dls %}
</ul>


### Ruby Core & Standard Library Documentation

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubychm7z" | where: "show", "true") %}
  {% include downloadlinks.html dls=dls %}
</ul>


### Development Kit

#### For use with Ruby 2.0 to 2.3 (32bits version only):

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "devkitsfx" | where: "show", "32") %}
  {% include downloadlinks.html dls=dls %}
</ul>


#### For use with Ruby 2.0 to 2.3 (x64 - 64bits only)

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "devkitsfx" | where: "show", "64") %}
  {% include downloadlinks.html dls=dls %}
</ul>
