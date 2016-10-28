Rails.application.routes.draw do
  
  resources :clients do
    resources :connections
    resources :accounts
  end
  
  root 'clients#index'
end
