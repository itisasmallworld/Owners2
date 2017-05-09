Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :projects, only: [:show]
  resources :entries, only: [:new]
end
