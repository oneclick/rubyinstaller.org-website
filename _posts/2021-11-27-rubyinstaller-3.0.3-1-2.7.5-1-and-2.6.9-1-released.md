---
layout: post
title:  "RubyInstaller 3.0.3-1, 2.7.5-1 and 2.6.9-1 released"
author: Lars Kanis
---
RubyInstaller versions 3.0.3-1, 2.7.5-1 and 2.6.9-1 are released. These are maintenance releases with bug and security fixes.

See the [ruby-3.0.3 release post](https://www.ruby-lang.org/en/news/2021/11/24/ruby-3-0-3-released/), [ruby-2.7.5 release post](https://www.ruby-lang.org/en/news/2021/11/24/ruby-2-7-5-released/) and [ruby-2.6.9 release post](https://www.ruby-lang.org/en/news/2021/11/24/ruby-2-6-9-released/) for more details.

A previous RubyInstaller-2.6.x or 2.7.x installation <b>should not</b> be updated by installing RubyInstaller-3.0.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.7 and 3.0.
It's best to use a new directory for 3.0.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
