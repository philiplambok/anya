Rails.application.routes.draw do
  resources :requests, only: %i[show]

  root 'home#index'
end
