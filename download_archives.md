---
layout: download_archives
title: Download Archives
permalink: /downloads/archives/
---

<div>
<div class="span-8 border" markdown="1">

## RubyInstallers

<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubyinstallerexe") %}
  {% include downloadlinks.html dls=dls %}
</ul>

[« Back]({{ "/downloads" | relative_url }})
</div>
<div class="span-8 border" markdown="1">

## Archives
<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubyinstaller7z") %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>


<div class="span-8 last" markdown="1">
## Documentation
<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "rubychm7z") %}
  {% include downloadlinks.html dls=dls %}
</ul>

## DevKits
<ul>
  {% assign dls = (site.data.downloads | where: "filetype", "devkitsfx") %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>
</div>
