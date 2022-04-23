Rails.application.routes.draw do
  get 'requests/:id', to: 'requests#show'
  put 'requests/:id', to: 'requests#show'
  post 'requests/:id', to: 'requests#show'
  delete 'requests/:id', to: 'requests#show'

  namespace :dashboards do
    resource :requests, only: :destroy
  end

  root 'home#index'
end
