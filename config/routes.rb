Rails.application.routes.draw do

  get 'story_plot/index'

  get 'character_name/index'

  resources :last_names, except: :show
  resources :first_names, except: :show
  resources :places, except: :show
  resources :situations, except: :show
  resources :characters, except: :show

  root to: 'home#index'

end
