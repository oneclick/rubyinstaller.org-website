---
layout: post
title:  "RubyInstaller 2.5.1-1 and 2.4.4-1 released with and without builtin Devkit"
author: Lars Kanis
---
RubyInstaller-2.5.1-1 and RubyInstaller-2.4.4-1 are released.
These are maintenance releases with some bug and several security fixes. See [ruby-2.4.4 release notes](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-4-4-released/) and [ruby-2.5.1 release notes](https://www.ruby-lang.org/en/news/2018/03/28/ruby-2-5-1-released/).
In addition bundled OpenSSL versions are updated to 1.0.2o and 1.1.0h.

Starting with this release we provide two flavors of installers: RubyInstaller with and without MSYS2 Devkit.

The classic RubyInstaller comes without the Devkit.
It contains the runtime environment of the Ruby MRI VM and is suitable to run pure ruby apps and gems.
The MSYS2-Devkit can be installed by the `ridk install` command.

New is the RubyInstaller with MSYS2-Devkit.
It installs an up-to-date version of MSYS2 with all required packages for typical gem installations.
This way Ruby newbies get a working ruby setup with less clicks and less trouble.

Installation of the Devkit can also be deselected - the installer behaves in this case identical to the classic installer.
As described in the [Download section]({{ "/downloads/" | relative_url }}), future updates to MSYS2 can be done per `ridk install` command, while updates to Ruby can be done through the RubyInstaller without Devkit.

Please note: MSYS2 can still be used as a separate installation and can still be shared between several ruby versions.


All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
