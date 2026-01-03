---
layout: download_archives
title: Download Archives
permalink: /downloads/archives/
---

Please use one of the latest patch versions of Ruby from the [Download]({{ "/downloads" | relative_url }}) section instead of older packages!
The internet is constantly changing, so even if older versions used to work great, they get broken by changes in the environment, namely MSYS2 and third-party gems.

<div>
<div class="span-8 border" markdown="1">
## Ruby+Devkit Installers

<ul>
  {% assign dls = site.data.downloads | where: "filetype", "ridkexe" %}
  {% include downloadlinks.html dls=dls %}
</ul>
[« Back]({{ "/downloads" | relative_url }})
</div>

<div class="span-8 border" markdown="1">
## RubyInstallers

<ul>
  {% assign dls = site.data.downloads | where: "filetype", "rubyinstallerexe" %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>


<div class="span-8 last" markdown="1">
## 7z - Archives
<ul>
  {% assign dls = site.data.downloads | where: "filetype", "rubyinstaller7z" %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>

<div class="span-8 last" markdown="1">
## Documentation
Documentation is no longer provided as separate package, but is integrated into RubyInstaller packages.
<ul>
  {% assign dls = site.data.downloads | where: "filetype", "rubychm7z" %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>

<div class="span-8 last" markdown="1">
## DevKits
Devkits are integrated into Ruby+Devkit installers and are no longer provided as separate package.
<ul>
  {% assign dls = site.data.downloads | where: "filetype", "devkitsfx" %}
  {% include downloadlinks.html dls=dls %}
</ul>
</div>
</div>
