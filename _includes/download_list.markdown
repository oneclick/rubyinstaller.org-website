## RubyInstallers <a id="archive" href="{{ "/downloads/archives" | relative_url }}">Archives</a>

Looking for an 🔥**ARM64 version**🔥? There's a [fundraiser to buy the main developer of RubyInstaller a notebook](https://www.gofundme.com/f/port-and-maintain-rubyinstaller-for-windows-on-arm64) with ARM processor to make it happen.

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

### PGP signature key

&nbsp;&nbsp; 🔑 [ci.ri2-package-signing-key.asc]({{ "ci.ri2-package-signing-key.asc" | relative_url }})

See the Wiki [how to verify PGP signatures](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-verify-signatures).
