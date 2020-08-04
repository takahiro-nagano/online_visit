Rails.application.routes.draw do
  resources :users
  resources :residents
  resources :reservations
  resources :informations
end
