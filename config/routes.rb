Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'  
  get 'cart', to: 'pages#cart'
  get 'delivery', to: 'pages#delivery'
  resources :categories, only: [:index, :show]
  resources :products, only: [:show] do
    resources :cart_items, only: [:create]
  end
  resources :cart_items, only: [:update, :destroy]
end
