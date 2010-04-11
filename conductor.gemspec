Gem::Specification.new do |s|
  s.name    = 'conductor'
  s.version = '1.0.0'
  s.author  = 'David Heinemeier Hansson'
  s.email   = 'david@loudthinking.com'
  s.summary = 'Web UI for Rails development'

  s.files = Dir["#{File.dirname(__FILE__)}/**/*"]
  s.require_paths = %w(lib app/models app/controllers app/helpers)
end
