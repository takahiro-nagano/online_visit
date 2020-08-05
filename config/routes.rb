Rails.application.routes.draw do
  root 'static_pages#top'

  resources :users
  resources :residents
  resources :reservations
  resources :informations
end
