Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }

  resources :passwords
  post 'password/forgot', to: 'passwords#forgot'
  post 'password/reset', to: 'passwords#reset'

  resources :addresses
  resources :buttons
  resources :emails
  resources :phones
  resources :inputtexts
  resources :headers
  # resources :forms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  get '/ws', to: 'your_controller#your_action'

  get 'forms', to: "forms#index"
  post 'forms', to: "forms#create"
  get 'forms/:key', to: "forms#show"
  put 'forms/:key', to: "forms#update"
  delete 'forms/:key', to: "forms#destroy" 
end
