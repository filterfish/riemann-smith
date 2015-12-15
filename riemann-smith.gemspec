require 'git-version-bump'

Gem::Specification.new do |s|
  s.name    = 'riemann-smith'
  s.version = '0.6.1'
  s.date    = Time.now.strftime("%Y-%m-%d")

  s.summary = "Monitor smith agents, reporting to Riemann"
  s.description = "Integrate smith agent monitoring with Riemann"

  s.homepage = "https://github.com/filterfish/riemann-smith"
  s.license = "GPL-3.0"

  s.authors = ["Richard Heycock"]
  s.email   = "rgh@digivizer.com"

  s.add_dependency "smith", "~> 0.7", ">= 0.7.9"
  s.add_dependency "sys-proctable", "~> 0.9"

  s.add_development_dependency 'yard', "~> 0.8.7"
  s.add_development_dependency 'bundler', "~> 1"
  s.add_development_dependency 'rake', "~> 10"

  s.executables = %w{queue-lengths riemann-smith}

  s.files = `git ls-files -z bin doc`.split("\0")
end
