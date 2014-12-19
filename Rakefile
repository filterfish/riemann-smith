require 'rubygems'
require 'bundler'

task :default => :test

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

Bundler::GemHelper.install_tasks

task :release do
  sh "git release"
end

require 'yard'

YARD::Rake::YardocTask.new :doc do |yardoc|
  yardoc.files = %w{lib/**/*.rb - doc/README.md}
end
