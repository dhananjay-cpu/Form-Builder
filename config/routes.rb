Rails.application.routes.draw do
  resources :addresses
  resources :buttons
  resources :emails
  resources :phones
  resources :inputtexts
  resources :headers
<<<<<<< HEAD
  # resources :forms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
=======
  resources :passwords
>>>>>>> 6edfa23 (Added Key)

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

<<<<<<< HEAD
  # Defines the root path route ("/")
  # root "posts#index"
=======
  get '/ws', to: 'your_controller#your_action'

  get 'forms', to: "forms#index"
  post 'forms', to: "forms#create"
  get 'forms/:key', to: "forms#show"
  put 'forms/:key', to: "forms#update"
  delete 'forms/:key', to: "forms#destroy" 
>>>>>>> 6edfa23 (Added Key)
end
