Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/items'
  get 'pages/events'
  get 'pages/places'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
