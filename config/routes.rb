Conductor::Engine.routes.draw do
  resources :scaffolds, :routes, :annotations, :statistics, :resources, :models, :app_controllers, :mailers
  resource :gemfile, :database
end
