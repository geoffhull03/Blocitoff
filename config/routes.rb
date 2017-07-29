Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]

  get 'welcome/index'

  get 'welcome/about'

  get 'users/new'

  root 'users#show'
end
