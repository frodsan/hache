hache
=====

Escapes HTML tag characters: `&`, `<`, `>`, `"`, `'` and `/`.

Usage
-----

```ruby
require "hache"

Hache.h(%q(<>&"'/)) == "&lt;&gt;&amp;&quot;&#x27;&#x2F;"
# => true
```

Installation
------------

```bash
$ gem install hache
```
