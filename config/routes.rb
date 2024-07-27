Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  root "prototypes#index"
  resources :prototypes
  resources :users
  resources :prototypes, only: [:index, :new, :create]
end
