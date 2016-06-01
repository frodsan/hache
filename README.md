hache [![Build Status](https://travis-ci.org/frodsan/hache.svg)](https://travis-ci.org/frodsan/hache)
=====

Escapes HTML tag characters: `&`, `<`, `>`, `"` and `'`.

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem "hache"
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install hache
```

Usage
-----

```ruby
require "hache"

Hache.h(%q(<>&"')) == "&lt;&gt;&amp;&#39;&#34;"
# => true
```

Contributing
------------

Fork the project with:

```
$ git clone git@github.com:frodsan/hache.git
```

To install dependencies, use:

```
$ bundle install
```

To run the test suite, do:

```
$ rake test
```

For bug reports and pull requests use [GitHub][issues].

License
-------

Hache is released under the [MIT License][mit].

[mit]: http://www.opensource.org/licenses/MIT
[issues]: https://github.com/frodsan/hache/issues
