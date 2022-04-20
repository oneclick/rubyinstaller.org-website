---
layout: post
title:  "RubyInstaller 3.1.2-1, 3.0.4-1, 2.7.6-1 and 2.6.10-1 released"
author: Lars Kanis
---
RubyInstaller versions 3.1.2-1, 3.0.4-1, 2.7.6-1 and 2.6.10-1 are released. These are maintenance releases with bug and security fixes.

See the [ruby-3.1.2 release post](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released/), [ruby-3.0.4 release post](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-0-4-released/), [ruby-2.7.6 release post](https://www.ruby-lang.org/en/news/2022/04/12/ruby-2-7-6-released/) and [ruby-2.6.10 release post](https://www.ruby-lang.org/en/news/2022/04/12/ruby-2-6-10-released/) for more details.

A previous RubyInstaller-2.7.x or 3.0.x installation <b>should not</b> be updated by installing RubyInstaller-3.1.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.0 and 3.1.
It's best to use a new directory for 3.1.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
