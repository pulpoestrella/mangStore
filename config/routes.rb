Rails.application.routes.draw do
  resources :discounts
  devise_for :users
  resources :products
  resources :categories
  get 'pages/index'
  get 'pages/home'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  devise_scope :user do
    authenticated :user do
      root 'pages#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'pages#home', as: :unauthenticated_root
    end
  end

end

