Conductor::Engine.routes.draw do
  resources :scaffolds, :routes, :annotations, :statistics, :resources, :models, :app_controllers, :mailers
  resource :gemfile, :database

  resources :fixtures, except: [:show]
  get 'fixtures/*path', to: 'fixtures#show', constraints: { path: /.*/ }
end
