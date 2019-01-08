---
layout: downloads
title: Downloads
permalink: /downloads/
---
### Which version to download?

If you don’t know what version to install and you’re getting started with Ruby, we recommend you use <b>Ruby+Devkit 2.5.X (x64)</b> installer.
It provides the biggest number of compatible gems and installs MSYS2-Devkit alongside Ruby, so that gems with C-extensions can be compiled immediately.
The 32 bit (x86) version is recommended only if custom 32 bit native DLLs or COM objects have to be used.


### How to update?

Ruby can be updated to the latest patch version (e.g. from 2.4.1 to 2.4.4) by running the new installer version.
Installed gems are not overwritten and will work with the new version without re-installation.
It's sufficient to use the RubyInstaller without Devkit for update installations.
The Devkit can be updated separately per `ridk install` command.

If the new Ruby version is from a different stable branch, then please use a new target directory for installation.
That is to say a previous RubyInstaller-2.4.x installation <b>should not</b> be updated by installing RubyInstaller-2.5.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.4 and 2.5.
Find more in the [FAQ](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-update-install).


### Which Development Kit?

Ruby 2.4.0 and newer use the [MSYS2 toolchain](http://www.msys2.org) as development kit.
It is bundled into the <b>Ruby+Devkit</b> installer version as a selectable component, so that no additional downloads/installs are required.
When using the Ruby without Devkit version, the MSYS2 Devkit can be installed separately by running `ridk install`.

MSYS2 is required to build native C/C++ extensions for Ruby and is necessary for [Ruby on Rails](http://rubyonrails.org/).
Moreover it allows the download and usage of [hundreds of Open Source libraries](https://github.com/Alexpux/MINGW-packages) which Ruby gems can depend on.

The MSYS2 development environment can be activated in the running cmd or powershell console by `ridk enable`.
This adds commands like `make`, `gcc`, `pacman` or `sh` to the search path.
See more in the [Wiki](https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool).


### Speed and Convenience

RubyInstaller is compiled with the latest GCC at the release date.
The installed ruby is a native Windows application but combines this with the rich UNIX toolset of [MSYS2](http://www.msys2.org) and the [large repository of MINGW libraries](https://github.com/Alexpux/MINGW-packages).

Find more about RubyInstaller and it's alternatives [here]({{ "/about/comparison" | relative_url }}).

### Documentation

The Ruby core and standard library documentation is part of the installation.
We also recommend the [online documentation](https://ruby-doc.org/) or HTML version downloadable [from ruby-doc.org](https://ruby-doc.org/downloads/).

### Support

Enjoy, happy Ruby coding, and let us know what you think or if you have any issues at our helpful and friendly
[RubyInstaller Google Group](http://groups.google.com/group/rubyinstaller).
