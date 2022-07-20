Rails.application.routes.draw do
  
  root "static_pages#index"
  
  get "contato", to: "static_pages#contato"
  get "sobre", to: "static_pages#sobre"
  
  resources :contacts
  resources :users, only: [:new, :create]
end
