$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "conductor/version"

Gem::Specification.new do |s|
  s.name    = 'conductor'
  s.version = Conductor::VERSION
  s.author  = 'David Heinemeier Hansson'
  s.email   = 'david@loudthinking.com'
  s.summary = 'Web UI for Rails development'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
