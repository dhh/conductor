Conductor::Engine.routes.draw do
  resources :scaffolds, :routes, :annotations, :statistics
  resource :gemfile, :database

  resources :fixtures, except: [:show]
  get 'fixtures/*path', to: 'fixtures#show', constraints: { path: /.*/ }
end
