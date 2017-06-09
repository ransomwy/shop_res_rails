Rails.application.routes.draw do
  devise_for :renters
  root 'renters#index'

  resources :bikes
  resources :reservations, only: [:new, :create, :destroy]
  resources :renters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
