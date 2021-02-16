Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get '/upload', to: 'photos#new'

  resources :photos, only: [:index, :show, :create]
end
