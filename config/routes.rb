Rails.application.routes.draw do
  devise_for :users
  root 'opinions#index'
  resources :opinions do
    resources :sources
  end
  get '/home', to: 'home#index'
end
