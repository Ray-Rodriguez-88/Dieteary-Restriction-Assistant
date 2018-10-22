Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      
      get '/restrictions', to: 'restrictions#index'
      post '/restrict', to: 'user_restrictions#create'
      get '/restrict', to: 'user_restictions#index'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/barcode', to: 'saved_api_results#barcode_data'

    end
  end
end