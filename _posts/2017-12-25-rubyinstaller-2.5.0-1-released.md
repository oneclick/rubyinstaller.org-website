---
layout: post
title:  "RubyInstaller 2.5.0-1 released"
author: Lars Kanis
---
RubyInstaller-2.5.0-1 brings some new features and makes the switch to OpenSSL-1.1.0.
See the [ruby-2.5.0 release post](https://www.ruby-lang.org/en/news/2017/12/25/ruby-2-5-0-released/) and the [the RubyInstaller CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG.md) for more details.
Please note, that many gems are not yet compatible with Ruby-2.5 on Windows.

You should therefore stay on 2.4.3 until it's better supported, unless you want to actively contribute to fix these issues.
One way to support ruby-2.5 is to update to the just released [rake-compiler-dock version 0.6.2](https://github.com/rake-compiler/rake-compiler-dock/blob/v0.6.2/History.md).

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!

A previous RubyInstaller-2.4.x installation <b>should not</b> be updated by installing RubyInstaller-2.5.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.4 and 2.5.
It's best to use a new directory for 2.5.x.
