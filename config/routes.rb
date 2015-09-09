Rails.application.routes.draw do

  root 'site#index'

  get 'dashboard' => 'dashboard#index', as: :dashboard

  resources :accounts

  get 'settings' => 'users#settings', as: :user_settings

  get 'signup' => 'users#signup', as: :signup
  match 'login' => 'users#login', via: [:get, :post], as: :login
  get 'logout' => 'users#logout', as: :logout


end
