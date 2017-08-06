Rails.application.routes.draw do
  get 'items/create'

  devise_for :users
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  get 'welcome/index'

  get 'welcome/about'

  get 'users/new'

  get 'items/create'

  get 'users/id'

  root 'users#show'
end
