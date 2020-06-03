Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :show, :create] do
    resources :reviews, only: [ :new, :create ]
  end
  resources :users, only: [ :show ] do
    resources :products, only: [:index, :new, :create, :update, :destroy]
  end
end
