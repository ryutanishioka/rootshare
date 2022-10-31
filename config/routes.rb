Rails.application.routes.draw do
  devise_for :users
  root to: "ways#index"
  resources :ways do
    resources :goods, only: [:create, :destroy]
  end
end
