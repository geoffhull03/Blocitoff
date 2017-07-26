Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'

  get 'welcome/about'

  get 'users/new'

  root 'welcome#index'
end
