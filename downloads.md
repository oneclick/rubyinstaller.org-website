---
layout: downloads
title: Downloads
permalink: /downloads/
---
### Which version to download?

If you don’t know what version to install and you’re getting started with Ruby, we recommend you use Ruby <b>2.4.X</b> as x64 or x86 installer.
These provide a stable language and the biggest number of compatible gems.
However, not all gems are maintained. Some older packages may not be compatible with newer versions of Ruby and RubyInstaller.

In any case, if you find gems that are not compatible, you're encouraged to notify the gem author or even better open pull requests about this issue.

### Which Development Kit?

Starting with Ruby 2.4.0 we use the [MSYS2 toolkit](http://www.msys2.org) as our development kit.
It is required to build native C/C++ extensions for Ruby and is necessary for [Ruby on Rails](http://rubyonrails.org/).
Moreover it allows the download and usage of [hundreds of Open Source libraries](https://github.com/Alexpux/MINGW-packages) which Ruby gems can depend on.

Down this page, several and <em>other</em> versions of Development Kits (DevKit) are listed.
Please download the right one for your version of Ruby:

* Ruby 2.4.0 and newer: The MSYS2 DevKit is downloaded as the last step of the installation.
  It can be installed later per `ridk install` command.
* Ruby 2.0.0 to 2.3.x (32bits): *mingw64-32-4.7.2*
* Ruby 2.0.0 to 2.3.x (64bits): *mingw64-64-4.7.2*

### Speed and Convenience

RubyInstaller is compiled with the latest GCC at the release date.
The installed ruby is a native Windows application but combines this with the rich UNIX toolset of [MSYS2](http://www.msys2.org) and the [large repository of MINGW libraries](https://github.com/Alexpux/MINGW-packages).

Find more about RubyInstaller and it's alternatives [here]({{ "/about/alternatives" | relative_url }}).

### Documentation

The Ruby core and standard library documentation is part of the installation.
We also recommend the [online documentation](https://ruby-doc.org/) or HTML version downloadable [from ruby-doc.org](https://ruby-doc.org/downloads/).

### Support

Enjoy, happy Ruby coding, and let us know what you think or if you have any issues at our helpful and friendly
[RubyInstaller Google Group](http://groups.google.com/group/rubyinstaller).
