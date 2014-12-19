require 'git-version-bump'

Gem::Specification.new do |s|
  s.name    = 'riemann-smith'
  s.version = GVB.version
  s.date    = GVB.date

  s.summary = "Monitor smith agents, reporting to Riemann"

  s.homepage = "https://github.com/filterfish/riemann-smith"
  s.license = "GPL-3.0"

  s.authors = ["Richard Heycock"]
  s.email   = "rgh@digivizer.com"

  s.add_dependency "git-version-bump", "~> 0.10"
  s.add_dependency "riemann-tools"
  s.add_dependency "smith", "~> 0.6"
  s.add_dependency "sys-proctable"

  s.add_development_dependency 'yard'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'github-release'

  s.files = `git ls-files -z bin doc`.split("\0")
end
