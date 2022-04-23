Rails.application.routes.draw do
  get 'requests/:id', to: 'requests#show'
  put 'requests/:id', to: 'requests#show'
  post 'requests/:id', to: 'requests#show'
  delete 'requests/:id', to: 'requests#show'

  root 'home#index'
end
