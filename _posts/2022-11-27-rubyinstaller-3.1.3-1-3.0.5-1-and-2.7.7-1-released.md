---
layout: post
title:  "RubyInstaller 3.1.3-1, 3.0.5-1 and 2.7.7-1 released"
author: Lars Kanis
---
RubyInstaller versions 3.1.3-1, 3.0.5-1 and 2.7.7-1 are released. These are maintenance releases with bug and security fixes.
See the [ruby-3.1.3 release post](https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/), [ruby-3.0.5 release post](https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-0-5-released/) and [ruby-2.7.7 release post](https://www.ruby-lang.org/en/news/2022/11/24/ruby-2-7-7-released/) for more details about the ruby core update.

In addition there are several [changes to RubyInstaller](https://github.com/oneclick/rubyinstaller2/blob/a09714dc05786947d77970f387194aafc1f9e2b3/CHANGELOG-3.1.md#rubyinstaller-313-1---2022-11-27).
The install directory (`C:/Ruby31-x64` or so) is now secured against changes by other users.
Only the user running the installer has the permissions to install gems now.

The `ridk use` tool has [options to save the ruby version change permanently](https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool#ridk-use) and there are several fixes to the start menu entries.

A previous RubyInstaller-2.7.x or 3.0.x installation <b>should not</b> be updated by installing RubyInstaller-3.1.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.0 and 3.1.
It's best to use a new directory for 3.1.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
