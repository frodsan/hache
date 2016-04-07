Hache [![Build Status](https://gitlab.com/frodsan/hache/badges/master/build.svg)](https://gitlab.com/frodsan/hache/builds)
=====

Escapes HTML tag characters: `&`, `<`, `>`, `"`, `'` and `/`.

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

Hache.h(%q(<>&"'/)) == "&lt;&gt;&amp;&quot;&#x27;&#x2F;"
# => true
```

Contributing
------------

Fork the project with:

```
$ git clone git@gitlab.com:frodsan/hache.git
```

To install dependencies, use:

```
$ bundle install
```

To run the test suite, do:

```
$ rake test
```

For bug reports and pull requests use [GitLab][issues].

License
-------

Hache is released under the [MIT License][mit].

[mit]: http://www.opensource.org/licenses/MIT
[issues]: https://gitlab.com/frodsan/hache/issues
