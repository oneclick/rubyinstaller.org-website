---
layout: post
title:  "RubyInstaller 2.6.0-1 released"
author: Lars Kanis
---
RubyInstaller-2.6.0-1 has been released.
See the [ruby-2.6.0 release post](https://www.ruby-lang.org/en/news/2018/12/25/ruby-2-6-0-released/) and the [the RubyInstaller CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.6.md) for more details.
Please note, that many gems are not yet compatible with Ruby-2.6 on Windows.
You should therefore stay on 2.5 until 2.6 is well supported, unless you want to contribute and fix remaining issues.

A previous RubyInstaller-2.4.x or 2.5.x installation <b>should not</b> be updated by installing RubyInstaller-2.6.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.5 and 2.6.
It's best to use a new directory for 2.6.x.

RubyInstaller-2.6.0-1 introduces a new experimental tool called __ridk use__.
It can be used to switch the active ruby version within the running command shell.
The interactive mode can be started on a console window per `ridk use`.
By default it scans the Windows registry for RubyInstaller versions and let's you choose a version to change to.
See [the Wiki](https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool#ridk-use) for further instructions.

Ruby-2.6 introduces a __JIT compiler__ as an experimental feature.
It can be used with RubyInstaller, however it currently requires manual steps to work and in the end is so slow, that it is of no practical use.
See [the FAQ](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#q-how-can-i-use-the-ruby-jit) how it already can be used.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
