Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :projects, only: [:show] do
    resources :entries, only: [:new]
  end
  resources :purchase, only: [:new]
end
