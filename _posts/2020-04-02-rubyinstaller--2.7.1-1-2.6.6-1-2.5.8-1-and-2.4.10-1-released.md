---
layout: post
title:  "RubyInstaller 2.7.1-1, 2.6.6-1, 2.5.8-1 and 2.4.10-1 released"
author: Lars Kanis
---
RubyInstaller versions 2.7.1-1, 2.6.6-1, 2.5.8-1 and 2.4.10-1 are released. These are maintenance releases with bug and security fixes.

See [ruby-2.4.10](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-4-10-released/), [ruby-2.5.8](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-5-8-released/), [ruby-2.6.6](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-6-6-released/) and [ruby-2.7.1 release notes](https://www.ruby-lang.org/en/news/2020/03/31/ruby-2-7-1-released/) as well as the RubyInstaller CHANGELOG files for [RubyInstaller-2.4.10-1](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.4.md#rubyinstaller-2410-1---2020-04-02), [RubyInstaller-2.5.8-1](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.5.md#rubyinstaller-258-1---2020-04-02), [RubyInstaller-2.6.6-1](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.6.md#rubyinstaller-266-1---2020-04-02) and [RubyInstaller-2.7.1-1](https://github.com/oneclick/rubyinstaller2/blob/master/CHANGELOG-2.7.md#rubyinstaller-271-1---2020-04-02).
Bundled OpenSSL versions are updated to 1.0.2u (Ruby-2.4.x) and 1.1.1f (Ruby-2.5+).

All above RubyInstaller versions switch to [Reline](https://github.com/ruby/reline) as line-editor for irb and other interactive console apps.
Also all RubyInstaller versions default to UTF-8 as external character encoding now.
Both changes were already [introduced in RubyInstaller-2.7.1-1]({% post_url 2020-01-05-rubyinstaller-2.7.0-1-released %}) and are now backported to RubyInstaller-2.4, 2.5 and 2.6.

Please note, that RubyInstaller-2.4.10-1 will be the last release of the Ruby-2.4 series.
This is because support for both Ruby-2.4 and OpenSSL-1.0.x ended.

All binaries are available in the [Download section]({{ "/downloads/" | relative_url }})!
