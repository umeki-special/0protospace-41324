Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root "prototypes#index"
  resources :users
end
