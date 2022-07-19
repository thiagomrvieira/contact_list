Rails.application.routes.draw do
  resources :contacts
  
  root "static_pages#index"

  get "contato", to: "static_pages#contato"
  get "sobre", to: "static_pages#sobre"

end
