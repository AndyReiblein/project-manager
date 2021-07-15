Rails.application.routes.draw do

  get '/search', to: 'projects#search'

  resources :projects do
    resources :tasks
  end
  namespace :project do
    resources :tasks
  end
  devise_for :users
  resources :user
  root to: 'projects#index'
end
