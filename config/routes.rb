Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root 'items#index'

  resources :categories
  resources :items, only: :index do
    post :filter, on: :collection
  end
end
