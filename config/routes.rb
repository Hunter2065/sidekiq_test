Rails.application.routes.draw do
  root 'home#index'

  get 'destroy_all', to: 'home#destroy_all'
  get 'create_random_user', to: 'home#create_random_user'
end
