Rails.application.routes.draw do
  
  namespace :admin do
    resources :users
    resources :menus
    resources :trucks
    # resources :guest_users

    root to: "users#index"
  end

  resources :trucks
  get "new_event/:id", to:'trucks#new_event', as: 'new_event'
  post "create_event/:id", to:'trucks#create_event', as: 'create_event'
  delete "delete_event/:id", to: 'trucks#delete_event', as: 'delete_event'
  post "follow_truck_guest/:id", to: 'trucks#follow_truck_guest', as: "follow_truck_guest"
  post "follow_truck/:id", to: 'trucks#follow_truck', as: "follow_truck"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "our_company", to:'pages#our_company'
  get "document", to:'pages#document'

  root to: 'pages#home'

end
