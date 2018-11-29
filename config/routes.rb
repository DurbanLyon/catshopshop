Rails.application.routes.draw do
  get 'home/cart'
  get 'home/signin'
  get 'home/signup'
  get 'home/index'
  get 'home/show'
  get 'home/index'

  post 'home/cart'
  post 'home/signin'
  post 'home/signup'
  post 'home/index'
  post 'home/show'
  root 'home#index'
  resources :show
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
