Rails.application.routes.draw do
  resources :tickets
  devise_for :users, skip: [:registrations]
  root to: 'static#homepage'
end