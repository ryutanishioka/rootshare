Rails.application.routes.draw do
  devise_for :users
  root to: "roots#index"
  resources :roots, only: [:index, :create, :destroy]
end
