Rails.application.routes.draw do
  root to: "onepayments#index"
  resources :onepayments,only: [:index, :new, :create]
end
