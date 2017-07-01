---
layout: post
title:  "RubyInstaller 2.4.1-2 released"
author: Lars Kanis
---
RubyInstaller 2.4.1-2 for Windows has been released!

It's the first update to the 2.4 branch. It brings some minor updates to the MSYS2 install process.
See [the CHANGELOG](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG.md) for more details.
A previous RubyInstaller-2.4 installation can be updated by installing the new version into the same directory.
Installed gems are not overwritten and will work with the new version without re-installation.
To avoid possible version inconsistencies between MSYS2 packages, it's recommended to run `ridk install` once after the update.
Choose the default options by simply pressing ENTER.
