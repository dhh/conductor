Rails.application.routes.draw do
  namespace :conductor do
    resources :scaffolds, :routes, :annotations, :statistics
  end
end
