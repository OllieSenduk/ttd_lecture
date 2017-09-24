Rails.application.routes.draw do
  get 'products/index'
  resources :products, only: [:new, :create]

  devise_for :users
  root to: 'products#index' # And remove the generated route `products/index`
end
