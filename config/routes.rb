Rails.application.routes.draw do
  get 'about/index'
  resources :passangers
  resources :travels
  resources :about
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
