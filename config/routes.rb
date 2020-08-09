Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :organizations
  get 'pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'explore', to: 'organizations#index'
  get '3d', to: 'pages#items'
  get 'events', to: 'pages#events'
  get 'places', to: 'pages#places'

  root to: 'pages#home'
end
