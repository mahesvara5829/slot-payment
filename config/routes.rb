Rails.application.routes.draw do
  devise_for :users
  root to: "onepayments#index"
  resources :onepayments
  resources :users, only: :show
end
