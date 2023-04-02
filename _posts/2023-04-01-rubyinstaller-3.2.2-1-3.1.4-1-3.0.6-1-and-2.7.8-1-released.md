---
layout: post
title:  "RubyInstaller 3.2.2-1, 3.1.4-1, 3.0.6-1 and 2.7.8-1 released"
author: Lars Kanis
---
RubyInstaller versions 3.2.2-1, 3.1.4-1, 3.0.6-1 and 2.7.8-1 are released. These are maintenance releases with bug and security fixes.
See the [ruby-3.2.2 release post](https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-2-2-released/), [ruby-3.1.4 release post](https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-1-4-released/), [ruby-3.0.6 release post](https://www.ruby-lang.org/en/news/2023/03/30/ruby-3-0-6-released/) and [ruby-2.7.8 release post](https://www.ruby-lang.org/en/news/2023/03/30/ruby-2-7-8-released/) for more details about the ruby core update.

In addition to the ruby core updates there are several changes to RubyInstaller.
The RubyInstaller versions 3.1.4-1, 3.0.6-1 and 2.7.8-1 are now updated to the [changes already introduced by 3.2.x]({% post_url 2022-12-29-rubyinstaller-3.2.0-1-released %}).
That means that the installer now offers an all-users installation with gem installation into the user home directories.
The single user mode is still recommended unless you want to actually use Ruby by several users on the same system.
See the wiki for [more details about the install modes](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-install-mode) and the [CHANGELOGs](https://github.com/oneclick/rubyinstaller2/tree/b33ff754ee35fcb4bc2b6532d2a0201ef05d3c94) for more changes to the ruby installation.

As always: a previous RubyInstaller-2.7.x to 3.1.x installation <b>should not</b> be updated by installing RubyInstaller-3.2.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.1 and 3.2.
It's best to use a new directory for each minor version as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
