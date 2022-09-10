Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd'
 
  root "home#index"

  resources :posts do
    member do
      patch :add
    end
    resources :comments, only: [:create, :destroy]
    resources :conversations
  end

  resources :users, only: [:show] do
    resources :conversations
  end
end
