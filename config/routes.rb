Rails.application.routes.draw do
  root "fortunes#index"

  resources :fortunes, only: [:index, :create, :show]

  get "/fortune/random"
end
