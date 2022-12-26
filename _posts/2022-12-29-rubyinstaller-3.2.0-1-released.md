---
layout: post
title:  "RubyInstaller 3.2.0-1 released"
author: Lars Kanis
---
RubyInstaller-3.2.0-1 has been released!
It features a whole bunch of great new features and improvements.
See the [ruby-3.2.0 release post](https://www.ruby-lang.org/en/news/2022/12/25/ruby-3-2-0-released/) for more details.
A noticeable addition to Ruby on Windows is the [support of UNIXSocket](https://bugs.ruby-lang.org/issues/19135).

The RubyInstaller setup now offers a system wide installation which requires administrative permissions.

![installer_all_users](/assets/installer_all_users.png){:class="img-responsive"}

In this case ordinary users can use a common ruby installation, but don't have write permissions to the ruby directory.
Gems can either be installed centrally by an administrator or are automatically redirected to a private per-user folder.
See out Wiki for further [description of the install modes](https://github.com/oneclick/rubyinstaller2/wiki/FAQ#user-content-install-mode).

RubyInstaller-3.2.0 changes the libssl library to OpenSSL-3.
This has several implications on the Ruby API and disables support for legacy cryptographic algorithms.
See [ruby-openssl](https://github.com/ruby/openssl/blob/master/History.md#version-300) and [OpenSSL-3](https://github.com/openssl/openssl/blob/master/doc/man7/migration_guide.pod#openssl-30).
Due to the incompatibilities RubyInstaller versions up to 3.1 will keep using OpenSSL-1.1.

Please note, that some gems are not yet compatible with Ruby-3.2 on Windows.
In this case you might stay on 3.1 until 3.2 is well supported.

A previous RubyInstaller-3.1.x or 2.7.x installation <b>should not</b> be updated by installing RubyInstaller-3.2.x into the same directory.
This is because gems with C extensions are not compatible between ruby-3.1 and 3.2.
It's best to use a new directory for 3.2.x as proposed by the installer.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
