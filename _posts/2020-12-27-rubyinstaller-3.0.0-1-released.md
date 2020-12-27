---
layout: post
title:  "RubyInstaller 3.0.0-1 released"
author: Lars Kanis
---
RubyInstaller-3.0.0-1 has been released!
It features a whole bunch of great new features and improvements.
See the [ruby-3.0.0 release post](https://www.ruby-lang.org/en/news/2020/12/25/ruby-3-0-0-released/) and the [the RubyInstaller CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-3.0.md) for more details.

Please note, that some gems are not yet compatible with Ruby-3.0 on Windows.
You should therefore stay on 2.7 until 3.0 is well supported, unless you want to contribute and fix remaining issues.
A previous RubyInstaller-2.6.x or 2.7.x installation <b>should not</b> be updated by installing RubyInstaller-3.0.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.7 and 3.0.
It's best to use a new directory for 3.0.x as proposed by the installer.

Ruby-3.0.0 finishes the transition to UTF-8 as the primary character encoding on Windows.
This enables full Unicode character set for filesystem and environment variables and increases compatibility with other tools and operating systems.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
