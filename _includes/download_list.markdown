## RubyInstallers <a id="archive" href="{{ "/downloads/archives" | relative_url }}">Archives</a>

Not sure what version to download? Please read the right-hand column for recommendations.

###  with Devkit

<ul>
  {% assign dls = site.data.downloads | where: "filetype", "ridkexe" | where: "show", "true" %}
  {% include downloadlinks.html dls=dls %}
</ul>

### without Devkit

<ul>
  {% assign dls = site.data.downloads | where: "filetype", "rubyinstallerexe" | where: "show", "true" %}
  {% include downloadlinks.html dls=dls %}
</ul>

## Other Useful Downloads

### 7-Zip Archives

<ul>
  {% assign dls = site.data.downloads | where: "filetype", "rubyinstaller7z" | where: "show", "true" %}
  {% include downloadlinks.html dls=dls %}
</ul>
