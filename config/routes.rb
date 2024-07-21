Rails.application.routes.draw do
  devise_for :users
  resources :users, only: :show # ユーザー詳細ページへのルーティングを追加
  get 'prototypes/index'
  root "prototypes#index"
end