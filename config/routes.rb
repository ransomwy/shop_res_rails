Rails.application.routes.draw do
  get 'res/index'

  get 'res/show'

  get 'res/new'

  get 'bicycles/index'

  get 'bicycles/show'

  get 'bicycles/new'

  get 'bikes/index'

  get 'bikes/show'

  get 'bikes/new'

  get 'bikes/edit'

  get 'reservations/index'

  get 'reservations/new'

  get 'reservations/edit'

  get 'renters/index'

  get 'renters/show'

  get 'renters/new'

  get 'renters/edit'

  root 'renters#index'

  resources :bikes
  resources :reservations, only: [:new, :create, :destroy]
  resources :renters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
