---
layout: post
title:  "RubyInstaller 2.7.0-1 released"
author: Lars Kanis
---
RubyInstaller-2.7.0-1 has been released.
See the [ruby-2.7.0 release post](https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/) and the [the RubyInstaller CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.7.md) for more details.
Please note, that some gems are not yet compatible with Ruby-2.7 on Windows.
You should therefore stay on 2.6 until 2.7 is well supported, unless you want to contribute and fix remaining issues.

A previous RubyInstaller-2.5.x or 2.6.x installation <b>should not</b> be updated by installing RubyInstaller-2.7.x into the same directory.
This is because gems with C extensions are not compatible between ruby-2.6 and 2.7.
It's best to use a new directory for 2.7.x as proposed by the installer.

So far RubyInstaller made use of [rb-readline](https://github.com/ConnorAtherton/rb-readline) as line-editor for irb and other interactive console apps.
This is because the GNU readline library doesn't work properly on Windows.
However rb-readline is mostly unmaintained and is strapped by many bugs.
Fortunately Ruby-2.7 introduces [Reline](https://github.com/ruby/reline) as a pure Ruby Readline implementation.
It works well on Windows, so that RubyInstaller-2.7.0-1 replaces rb-readline by Reline.

Another change is that RubyInstaller-2.7.0-1 defaults to UTF-8 as external character encoding.
Ruby source code, MSYS2 tools and PowerShell core already default to UTF-8.
This change also fixes some issues with Reline and increases compatibility with other operating systems.
UTF-8 is enabled by setting the environment variable `RUBYOPT` to `-Eutf-8` .
It therefore affects all ruby versions installed on the system.
To revert to classic country dependant codepage as external encoding, go to Windows system settings and remove `RUBYOPT` from user and system environment variables.

Both Reline and UTF-8 default will be backported to the next RubyInstaller 2.4, 2.5 and 2.6 releases, if things work well at 2.7.
So please use the [issue tracker](https://github.com/oneclick/rubyinstaller2/issues) to give positive or negative feedback!

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
