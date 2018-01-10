Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
as :user do
  get 'signin', to: 'devise/sessions#new', as: :new_user_session
  post 'signin', to: 'devise/sessions#create', as: :user_session
  get 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
end
  root to: 'home#index'
  get 'pages/about', to: 'pages#about'
  get 'pages/map', to: 'pages#map'
  get 'profile', to: 'profile#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
