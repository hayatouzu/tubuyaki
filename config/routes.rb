Rails.application.routes.draw do
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
