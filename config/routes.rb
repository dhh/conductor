Conductor::Engine.routes.draw do
  resources :scaffolds, :routes, :annotations, :statistics, :fixtures
  resource :gemfile, :database
end
