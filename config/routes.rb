Rails.application.routes.draw do


  root 'tweets#top'
  get 'tweets/top/' =>'twseets#search'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
