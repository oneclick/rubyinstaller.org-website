---
layout: post
title:  "RubyInstaller 3.3.0-1 released"
author: Lars Kanis
---
RubyInstaller-3.3.0-1 has been released!
It features a whole bunch of great new features and improvements.
See the [ruby-3.3.0 release post](https://www.ruby-lang.org/en/news/2023/12/25/ruby-3-3-0-released/) and the [RubyInstaller-CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-3.3.md#rubyinstaller-330-1---2023-12-26) for more details.

The new RJIT and the performance improvements to YJIT are not available on Windows, but most of the other improvements are.
For instance the `irb` has got even more enhancements and but fixes. See [here](https://railsatscale.com/2023-12-19-irb-for-ruby-3-3/).

Please note, that some gems are not yet compatible with Ruby-3.3 on Windows.
In this case you might stay on 3.2 until 3.3 is well supported.

A previous RubyInstaller-3.2.x or 3.1.x installation <b>should not</b> be updated by installing RubyInstaller-3.3.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.2 and 3.3.
It's best to use a new directory for 3.3.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
