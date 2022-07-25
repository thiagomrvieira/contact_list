Rails.application.routes.draw do
  
  root "static_pages#index"
  
  get "contato", to: "static_pages#contato"
  get "sobre", to: "static_pages#sobre"
  
  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'

  resources :contacts
  resources :users, only: [:new, :create, :show]
end
