Conductor::Engine.routes.draw do
  resources :scaffolds, :routes, :annotations, :statistics
  resource :gemfile
end
