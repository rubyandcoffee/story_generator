Rails.application.routes.draw do

  get 'character_name/index'

  resources :last_names
  resources :first_names
  resources :places
  resources :situations
  resources :characters

  root to: 'home#index'

end
