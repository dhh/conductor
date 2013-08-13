module Conductor
  class Engine < Rails::Engine
    isolate_namespace Conductor

    config.after_initialize do |app|
      app.routes.prepend do
        mount Conductor::Engine => '/conductor'
      end
    end
  end
end
