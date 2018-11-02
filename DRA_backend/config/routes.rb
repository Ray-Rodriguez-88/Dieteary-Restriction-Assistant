Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      
      get '/restrictions', to: 'restrictions#index'
      post '/restrictor', to: 'user_restictions#create'
      post '/nonrestrictor', to: 'user_restictions#delete'
      get '/restrict', to: 'user_restictions#index'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/barcode', to: 'saved_api_results#barcode_data'
      post '/barcode', to: 'saved_api_results#barcode_data'

    end
  end
end