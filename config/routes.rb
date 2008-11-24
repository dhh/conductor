ActionController::Routing::Routes.draw do |map|
  map.namespace :conductor do |conductor|
    conductor.resources :scaffolds, :routes, :annotations
  end
end
