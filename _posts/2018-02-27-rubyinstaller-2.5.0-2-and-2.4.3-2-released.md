---
layout: post
title:  "RubyInstaller 2.5.0-2 and 2.4.3-2 released"
author: Lars Kanis
---
RubyInstaller-2.5.0-2 and RubyInstaller-2.4.3-2 fix a package conflict while `ridk install`.

This issue is due to MSYS2 updates and caused `ridk install` to fail since 2018-02-05.
See [this bug report](https://github.com/oneclick/rubyinstaller2/issues/101) for more details.

There is no need to update, if you already have got a working MSYS2 setup.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
