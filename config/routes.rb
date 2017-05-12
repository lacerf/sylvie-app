Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :tickets
  devise_for :users, skip: [:registrations]
  root to: 'static#homepage'
end