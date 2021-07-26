---
layout: post
title:  "RubyInstaller 3.0.2-1, 2.7.4-1 and 2.6.8-1 released"
author: Shaun Mabbs
---
RubyInstaller versions 3.0.2-1, 2.7.4-1 and 2.6.8-1 are released. These are maintenance releases with bug and security fixes.

Enabled ruby to support path length of more than 260 characters. See commit [829ab9d](https://github.com/oneclick/rubyinstaller2/commit/829ab9d9798d180655b6b336797b1087bfa82f5c)
Added racc, rbs and typeprof executables to the /bin folder. See [#231](https://github.com/oneclick/rubyinstaller2/issues/231)


See the [ruby-3.0.2 release post](https://www.ruby-lang.org/en/news/2021/07/07/ruby-3-0-2-released/), [ruby-2.7.4 release post](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-7-4-released/) and [ruby-2.6.8 release post](https://www.ruby-lang.org/en/news/2021/07/07/ruby-2-6-8-released/) for more details.

Please note, that some gems are not yet compatible with Ruby-3.0 on Windows.
In this case you might stay on 2.7 until 3.0 is well supported.

A previous RubyInstaller-2.6.x or 2.7.x installation <b>should not</b> be updated by installing RubyInstaller-3.0.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.7 and 3.0.
It's best to use a new directory for 3.0.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
