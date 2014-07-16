Rails.application.routes.draw do
  resources :bills

  devise_for :users
  root to: 'visitors#index'
end
