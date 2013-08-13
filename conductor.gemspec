$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "conductor/version"

Gem::Specification.new do |s|
  s.name    = 'conductor'
  s.version = Conductor::VERSION
  s.author  = 'David Heinemeier Hansson'
  s.email   = 'david@loudthinking.com'
  s.summary = 'Web UI for Rails development'

  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
  s.require_paths = %w(lib app/models app/controllers app/helpers)
end
