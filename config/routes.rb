Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :tasks, except: [:show]

  root to: "email#index"
  resources :emails, only: [:create, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
