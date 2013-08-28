require "jquery/rails/engine"

module Conductor
  class Engine < Rails::Engine
    isolate_namespace Conductor

    initializer 'asset_pipeline' do |app|
      app.config.assets.precompile += ['conductor.js', 'conductor.css', 'conductor/gemfile.js', 'conductor/editor.js']
    end

    config.autoload_paths << File.expand_path("../app/forms", __FILE__)

    config.after_initialize do |app|
      app.routes.prepend do
        mount Conductor::Engine => '/conductor'
      end
    end
  end
end
