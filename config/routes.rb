Rails.application.routes.draw do
  get 'prototypes/index'
  root "prototypes#index"
end
