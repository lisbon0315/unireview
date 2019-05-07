Rails.application.routes.draw do
  get 'pages/index'
  get 'lessons/new'
  get 'universities/new'
  root 'pages#index'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :universities
  resources :lessons
  resources :reviews
end
