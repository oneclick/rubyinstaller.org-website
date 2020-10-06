---
layout: about
titel: Is this for you?
permalink: /about/comparison/
order: 15
---
## Is this for you?

RubyInstaller is the easiest and most widely-used Ruby environment on Windows.
And [Ruby](https://www.ruby-lang.org) is a [great language](http://www.bestprogramminglanguagefor.me/why-learn-ruby) for beginners as well as professionals.
It's suitable for small scripts as well as for large applications.
RubyInstaller combines the possibilities of native Windows programs with the rich UNIX toolset of [MSYS2](http://www.msys2.org) and the [large repository of MINGW libraries](https://github.com/Alexpux/MINGW-packages).
RubyInstaller is a great way to use Ruby for development and production, especially if you just want to use Ruby for day-to-day scripting or require access to Windows resources such as hardware devices, DLLs, OLE, graphical user interfaces or the GPU.

### Comparison

Although the Ruby community is continuously working to make the experience of using Ruby on Windows as smooth as possible, it's still slower and less convenient compared to Linux or MacOS.
Some of the shortcomings are due to certain Windows operating system internals (such as its poor shell support), and others are due to the fact that so many Ruby developers simply prefer a UNIX-style system.

[**Ubuntu Linux**](https://ubuntu.com) or [**MacOS**](https://www.apple.com/de/macos/what-is/) are great as Ruby development platforms.
They provide the best overall Ruby experience.
If you use Ruby for a larger project you might consider moving to one of those operating systems.
Ruby is strong at cross-platform development, so it's easy to use Ruby on Linux for development and RubyInstaller on Windows in production or vice versa.

[**Windows Subsystem for Linux**](https://docs.microsoft.com/en-us/windows/wsl/about) provides a Linux environment on top of Windows.
Most of the development tools available for Linux can be used directly in WSL.
It is well-suited for web development with Rails, and it provides network and filesystem access, but access to hardware devices and interoperability with native Windows software both are very limited.
Ruby can be installed as a package from the selected Linux distribution (typically Ubuntu) or through [rvm](https://rvm.io) or some similar Ruby version manager.
WSL is not suitable for production use.

[**Cygwin**](https://www.cygwin.com/) is another alternative to RubyInstaller.
It provides a POSIX environment on Windows.
Ruby can be installed along with many other tools, but Cygwin cannot directly execute arbitrary Linux binaries (in contrast to WSL).
Cygwin offers only a few advantages over RubyInstaller such as a better shell and universal UTF-8 support.
But it is slower, and makes accessing Windows' native resources more difficult.
