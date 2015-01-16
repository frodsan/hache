Gem::Specification.new do |s|
  s.name        = "hache"
  s.version     = "1.1.0"
  s.summary     = %q(Escapes HTML tag characters: &, <>, ", ', /.)
  s.description = s.summary
  s.authors     = ["Francesco Rodríguez", "Mayn Kjær"]
  s.email       = ["frodsan@me.com", "mayn.kjaer@gmail.com"]
  s.homepage    = "https://github.com/harmoni/hache"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")

  s.add_development_dependency "cutest"
end
