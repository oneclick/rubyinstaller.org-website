---
layout: post
title:  "RubyInstaller 3.4.1-2 released with a new package for ARM64"
author: Lars Kanis
---
RubyInstaller-3.4.1-2 has been released!
It features a brand-new package for Windows on ARM.
See the [ruby-3.4.0 release post](https://www.ruby-lang.org/en/news/2024/12/25/ruby-3-4-0-released/) and the [RubyInstaller-CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-3.4.md#rubyinstaller-341-2---2025-01-18) for more details.

Last November I started [a fundraiser]({{ "/2024/11/20/fundraiser-for-arm64" | relative_url }}) to purchase a new laptop with ARM processor, used to port and maintain the RubyInstaller for ARM.
This fundraiser was successful and I started to work on the new port.

Now Ruby-3.4.1 is available as a ARM package, but not only that: Ruby-head is [available here](https://github.com/oneclick/rubyinstaller2/releases/tag/rubyinstaller-head).

The ARM version required some changes to the side-by-side DLL loading mechanism and it is solved in such a way that also fixes [a longstanding issue on x64/x86](https://github.com/oneclick/rubyinstaller2/issues/60).
Unfortunately these changes are too heavy to be backported to ruby-3.3 and older, so that no ARM package of these older ruby versions will be released.

Next steps to the ruby ecosystem will follow like adding `aarch64-mingw-ucrt` [support to rake-compiler-dock](https://github.com/rake-compiler/rake-compiler-dock/issues/148).
This way binary gems (nokogiri, sqlite3, etc.) can be provided for the new platform.
Fixing issues of [bundler](https://github.com/rubygems/rubygems/pull/8378) and some other gems are in the works as well.

Please note, that some gems are not yet compatible with Ruby-3.4 on Windows on ARM.
In this case you might use the Ruby-3.3 x64 version, which is well supported.

Beside the work on ARM there's also some work pending to add RubyInstaller to the [Microsoft Store](https://apps.microsoft.com).
A first necessary change was made to the uninstaller.
It removes installed gems and MSYS2 per default.
So be careful running the `unins000.exe` file in the ruby install directory!
The old behavior can be get with the option `/allfiles=no` as described [in the wiki](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#q-how-do-i-perform-a-silentunattended-install-with-the-rubyinstaller).

As always: A previous RubyInstaller-3.3.x or 3.2.x installation <b>should not</b> be updated by installing RubyInstaller-3.4.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.3 and 3.4.
It's best to use a new directory for 3.4.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
