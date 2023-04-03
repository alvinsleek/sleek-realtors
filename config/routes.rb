Rails.application.routes.draw do
  get 'rentals/create'
  post '/login', to: 'sessions#create'
  namespace :api do
    namespace :v1 do 
      resources :users, only: [:create]
      resources :rentals, only: [:create]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
