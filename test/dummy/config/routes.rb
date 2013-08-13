Rails.application.routes.draw do

  mount Conductor::Engine => "/conductor"
end
