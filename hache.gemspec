Gem::Specification.new do |s|
  s.name        = "hache"
  s.version     = "1.0.0"
  s.summary     = %q(Escapes HTML tag characters: &, <>, ", ', /.)
  s.description = s.summary
  s.authors     = ["Francesco Rodríguez"]
  s.email       = ["frodsan@me.com"]
  s.homepage    = "https://github.com/frodsan/hache"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest"
end
