---
layout: post
title:  "RubyInstaller 3.1.0-1 released"
author: Lars Kanis
---
RubyInstaller-3.1.0-1 has been released!
It features a whole bunch of great new features and improvements.
See the [ruby-3.1.0 release post](https://www.ruby-lang.org/en/news/2021/12/25/ruby-3-1-0-released/) for more details.

RubyInstaller-3.1.0-x64 has a changed C-runtime called UCRT replacing the old MSVCRT.
The modern C-runtime brings better compatibility to C standards and to libraries compiled with Microsoft Visual Studio.
See the feature request [here](https://bugs.ruby-lang.org/issues/17845).
There are [several platform strings](https://github.com/ruby/ruby/pull/4599) that change with the new release.
In particular the ruby and gem platform is now `x64-mingw-ucrt` instead of `x64-mingw32` and the MSYS2 package prefix is now `mingw-w64-ucrt-x86_64-`.
The Devkit version of RubyInstaller now bundles the UCRT based MINGW packages.
`ridk install` can be used to install these packages into a previous or a shared location of MSYS2.
There are some subsequent issues like seamless [integration into Github Actions](https://github.com/ruby/setup-ruby/issues/193) and [cross compiler support](https://github.com/rake-compiler/rake-compiler-dock/issues/61) regarding UCRT.

Please note, that some gems are not yet compatible with Ruby-3.1 on Windows.
In this case you might stay on 3.0 until 3.1 is well supported.

A previous RubyInstaller-3.0.x or 2.7.x installation <b>should not</b> be updated by installing RubyInstaller-3.1.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.0 and 3.1.
It's best to use a new directory for 3.1.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
