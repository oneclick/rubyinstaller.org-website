---
layout: post
title:  "RubyInstaller 2.7.2-1, 2.6.6-2 and 2.5.8-2 released"
author: Lars Kanis
---
RubyInstaller versions 2.7.2-1, 2.6.6-2 and 2.5.8-2 are released. These are maintenance releases with bug and security fixes.

This release series fixes [some recent issues](https://github.com/oneclick/rubyinstaller2/issues/184) with MSYS2 package installation and MSYS2 updates.
It adds RI documentation as optional install component, which is well integrated into `irb` on Ruby-2.7 and it improves the `ridk use` command.
Moreover there are some updates to bundled libraries and to the TLS CA list.

See [ruby-2.7.2 release notes](https://www.ruby-lang.org/en/news/2020/10/02/ruby-2-7-2-released/) as well as the RubyInstaller CHANGELOG files for [RubyInstaller-2.5.8-2](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.5.md#rubyinstaller-258-2---2020-10-06), [RubyInstaller-2.6.6-2](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.6.md#rubyinstaller-266-2---2020-10-06) and [RubyInstaller-2.7.2-1](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.7.md#rubyinstaller-272-1---2020-10-06).

Unfortunately at the time of writing the primary MSYS2 package server [https://repo.msys2.org](https://repo.msys2.org) is down.
Alternative hosts are automatically selected by `pacman`, but only after a significant delay.
To avoid this delay, you might comment that host out by using the following command and inspect the remaining hosts be the second command:
```
ridk exec sh -c "sed -e '/repo.msys2.org/ s/Serv/#Serv/' -i /etc/pacman.d/mirrorlist.*"
ridk exec sh -c "cat /etc/pacman.d/mirrorlist.*"
```

As usual all binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
