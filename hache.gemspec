Gem::Specification.new do |s|
  s.name        = "hache"
  s.version     = "1.1.0"
  s.summary     = %q(Escapes HTML tag characters: &, <>, ", ', /.)
  s.description = s.summary
  s.author      = "Francesco Rodríguez"
  s.email       = "frodsan@protonmail.ch"
  s.homepage    = "https://github.com/frodsan/hache"
  s.license     = "MIT"

  s.files      = Dir["LICENSE", "README.md", "lib/**/*.rb"]
  s.test_files = Dir["test/**/*.rb"]

  s.add_development_dependency "minitest", "~> 5.8"
  s.add_development_dependency "minitest-sugar", "~> 2.1"
  s.add_development_dependency "rake", "~> 10.0"
end
