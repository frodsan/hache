hache
=====

Escapes HTML tag characters (`&`, `<`, `>`, `"`, `'`).

Usage
-----

```ruby
require "hache"

Hache.h(%q(<>&"')) == "&lt;&gt;&amp;&quot;&#39;"
# => true
```

Installation
------------

```bash
$ gem install hache
```
