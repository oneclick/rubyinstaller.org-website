---
layout: downloads
title: Downloads
permalink: /downloads/
---
### Which version to download?

If you don’t know what version to install and you’re getting started with Ruby, we recommend you use <b>Ruby+Devkit 2.6.X (x64)</b> installer.
It provides the biggest number of compatible gems and installs MSYS2-Devkit alongside Ruby, so that gems with C-extensions can be compiled immediately.
The 32 bit (x86) version is recommended only if custom 32 bit native DLLs or COM objects have to be used.


### How to update?

Ruby can be updated to the latest patch version (e.g. from 2.5.1 to 2.5.4) by running the new installer version.
Installed gems are not overwritten and will work with the new version without re-installation.
It's sufficient to use the RubyInstaller without Devkit for update installations.
The Devkit can be updated separately per `ridk install` command.

If the new Ruby version is from a different stable branch, then please use a new target directory for installation.
That is to say a previous RubyInstaller-2.5.x installation <b>should not</b> be updated by installing RubyInstaller-2.6.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.5 and 2.6.
Find more in the [FAQ](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-update-install).


### RubyInstaller-head

RubyInstaller-head is a daily updated version of the [Ruby development branch](https://github.com/ruby/ruby/).
It can be used for continuous integration tests (CI) on your gems or applications, so that you’re prepared for upcoming changes to the ruby core.
Builds are available on stable download URIs in the [github release section](https://github.com/oneclick/rubyinstaller2/releases/tag/rubyinstaller-head).
They can be easily [integrated into Appveyor](https://github.com/oneclick/rubyinstaller2/wiki/For-gem-developers#user-content-appveyor).


### With Development Kit?

RubyInstaller uses the [MSYS2 toolchain](http://www.msys2.org) as development kit.
It is bundled into the <b>Ruby+Devkit</b> installer version as a selectable component, so that no additional downloads/installs are required.
It's possible to [share one Devkit](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-shared-devkit) for multiple Ruby versions.

MSYS2 is required to build native C/C++ extensions for Ruby and is necessary for [Ruby on Rails](http://rubyonrails.org/).
Moreover it allows the download and usage of [hundreds of Open Source libraries](https://github.com/Alexpux/MINGW-packages) which Ruby gems can depend on.

The MSYS2 development environment can be activated in the running cmd or powershell console by `ridk enable`.
This adds commands like `make`, `gcc`, `pacman` or `sh` to the search path.
See more in the [Wiki](https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool).


### Speed and Convenience

RubyInstaller is compiled with the latest GCC at the release date.
The installed ruby is a native Windows application but combines this with the rich UNIX toolset of [MSYS2](http://www.msys2.org) and the [large repository of MINGW libraries](https://github.com/Alexpux/MINGW-packages).

Find more about RubyInstaller and its alternatives [here]({{ "/about/comparison" | relative_url }}).

### Documentation

The Ruby core and standard library documentation is part of the installation.
We also recommend the [online documentation](https://ruby-doc.org/) or HTML version downloadable [from ruby-doc.org](https://ruby-doc.org/downloads/).

### Support

Enjoy, happy Ruby coding, and let us know what you think or if you have any issues at our helpful and friendly
[RubyInstaller Google Group](http://groups.google.com/group/rubyinstaller).
