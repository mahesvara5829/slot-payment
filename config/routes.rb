Rails.application.routes.draw do
  devise_for :users
  root to: "onepayments#index"
  resources :onepayments do
    resources :comments,only: :create
  end
  resources :users, only: :show
end
