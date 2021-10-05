Rails.application.routes.draw do
  resources :sessions, only: [:new, :create]
  get "/secrets", to: "secrets#show"
  post "/logout", to: "sessions#destroy"
end
