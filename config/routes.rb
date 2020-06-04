Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    resources :reviews, only: [ :new, :create ]
  end
  resources :users, only: [ :show ]
  resources :orders_to_products, only: [:create, :update, :destroy]
  resources :orders, only: [ :show ]
end
