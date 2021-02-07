Rails.application.routes.draw do
  root 'items#index'

  resources :items, only: :index do
    post :filter, on: :collection
  end
end
