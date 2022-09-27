Rails.application.routes.draw do
  devise_for :users
  root to: "roots#index"
end
