Rails.application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'
end
