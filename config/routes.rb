Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  root 'manufacturers#index'

  resources :manufacturers

  resources :sections do
    resources :categories do
      resources :subcategories do
        resources :items do
          resources :modifications
          post :filter, on: :member
        end
      end
    end
  end
end
