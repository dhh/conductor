ActionController::Routing::Routes.draw do |map|
  map.namespace :conductor do |rails|
    rails.resources :scaffolds, :routes, :annotations
  end
end
