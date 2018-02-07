---
layout: about
titel: Is it for you?
permalink: /about/alternatives/
order: 15
---
## Is it for you?

RubyInstaller is the easiest and most used Ruby environment on Windows.
And Ruby is a great language for beginners as well as professionals.
It's suitable for small scripts as well as large applications.
RubyInstaller combines the possibilities of native Windows programs with the rich UNIX toolset of [MSYS2](http://www.msys2.org) and the [large repository of MINGW libraries](https://github.com/Alexpux/MINGW-packages).
It is a great foundation to use Ruby for development and production, especially if you want to use Ruby for day-to-day scripting or require access to Windows resources like hardware devices, DLLs, OLE, graphical user interfaces or GPU.

## Alternatives to RubyInstaller for Windows

Although the ruby community is continuously working to get Ruby on Windows as smooth as possible, it's still slower and less convenient compared to Linux or MacOS.
Some of the shortcomings are due to Windows operating system internals (like poor shell support) and others are due to the fact that many Ruby developers prefer a UNIX like system.

[**Ubuntu Linux**](https://ubuntu.com) or [**MacOS**](https://www.apple.com/de/macos/what-is/) are great as Ruby development platforms.
They provide the best overall Ruby experience.
If you plan to use Ruby more than once or for a larger project it's worth to consider moving to one of these operating systems.
Ruby is strong as a cross platform development platform, so that it's easy to use Ruby on Linux for development and RubyInstaller on Windows in production or vice versa.

[**Windows subsystem for Linux**](https://docs.microsoft.com/de-de/windows/wsl/about) provides a Linux environment on top of Windows.
Most of the development tools available for Linux can be used in WSL.
It is well suited for web development with rails, provides network and filesystem access but access to hardware devices or interaction with native Windows software is very limited.
Ruby can be installed from the selected Linux distribution (typically Ubuntu) or by [rvm](https://rvm.io) or a similar ruby version manager.
WSL is not suitable for production use.

[**Cygwin**](https://www.cygwin.com/) is another alternative to RubyInstaller.
It provides a POSIX environment on Windows.
Ruby can be installed among many other tools, but can not execute Linux binaries directly (in contrast to WSL).
Cygwin offers only little advantages over RubyInstaller like a better shell and universal UTF-8 support.
But it is slower and it's difficult to use Windows native resources.
