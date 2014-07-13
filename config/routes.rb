Rails.application.routes.draw do
  resources :cmas

  resources :comps

  root to: 'visitors#index'
end
