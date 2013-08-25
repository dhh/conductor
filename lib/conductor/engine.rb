require "jquery/rails/engine"

module Conductor
  class Engine < Rails::Engine
    isolate_namespace Conductor

    initializer 'ace.asset_pipeline' do |app|
      app.config.assets.precompile += ['conductor/gemfile.js', 'conductor/editor.js']
    end

    config.after_initialize do |app|
      app.routes.prepend do
        mount Conductor::Engine => '/conductor'
      end
    end
  end
end
