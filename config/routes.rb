Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :show, :create, :update, :destroy]
      resources :courts, only: [:index, :show]
      resources :player_courts, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'players#profile'
    end
  end
end
