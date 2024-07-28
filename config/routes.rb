Rails.application.routes.draw do
  resources :prototypes do
    resources :comments, only: [:create]
  end
  # 其他の場所に書かれているルート定義
  devise_for :users
  get 'prototypes/index'
  root "prototypes#index"
  resources :users
  resources :prototypes, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
end