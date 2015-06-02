require 'git-version-bump'

Gem::Specification.new do |s|
  s.name    = 'riemann-smith'
  s.version = '0.3.2'
  s.date    = Time.now.strftime("%Y-%m-%d")

  s.summary = "Monitor smith agents, reporting to Riemann"

  s.homepage = "https://github.com/filterfish/riemann-smith"
  s.license = "GPL-3.0"

  s.authors = ["Richard Heycock"]
  s.email   = "rgh@digivizer.com"

  s.add_dependency "riemann-tools"
  s.add_dependency "smith", "~> 0.7"
  s.add_dependency "sys-proctable"

  s.add_development_dependency 'yard'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'

  s.executables = %w{queue-lengths riemann-smith}

  s.files = `git ls-files -z bin doc`.split("\0")
end
