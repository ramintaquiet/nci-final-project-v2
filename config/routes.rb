Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/info', to: 'pages#info'
  get '/pets', to: 'pages#pets'
  get '/favorite', to: 'pages#favorite'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
