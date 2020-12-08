Rails.application.routes.draw do

  get 'favoritepet/update'
  resources :genders
  resources :categories
  resources :petprofiles
  devise_for :users
  root 'pages#home'

post 'petprofiles/filter'

get 'filter', to: "petprofiles#filter"
  get 'search', to: "petprofiles#search"
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/info', to: 'pages#info'
  get '/pets', to: 'pages#pets'
  get '/favorite', to: 'pages#favorite'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
