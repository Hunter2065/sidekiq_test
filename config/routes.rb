Rails.application.routes.draw do
  require 'sidekiq/web'

  root 'home#index'

  mount Sidekiq::Web => '/sidekiq'

  get 'destroy_all', to: 'home#destroy_all'
  get 'create_random_user', to: 'home#create_random_user'
end
