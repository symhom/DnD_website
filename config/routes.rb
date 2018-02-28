Rails.application.routes.draw do

  root 'maps#index'

  get "/movies" => "movies#index"
  get "/movies/new" => 'movies#new'
  post "/movies" => 'movies#create'
  get "/movies/:id" => 'movies#show'
  delete "/movies/:id" => 'movies#destroy'
  get "/movies/:id/edit" => 'movies#edit'
  patch "/movies/:id" => 'movies#update'

  get "/directors" => "directors#index"
  get "/directors/new" => 'directors#new'
  post "/directors" => 'directors#create'
  get "/directors/:id" => 'directors#show'
  delete "/directors/:id" => 'directors#destroy'
  get "/directors/:id/edit" => 'directors#edit'
  patch "/directors/:id" => 'directors#update'

  # get "/signup" => 'users#new'

  get "/sessions/new" => 'sessions#new'
  post "/sessions" => 'sessions#create'
  get "/logout" => 'sessions#destroy'

  get "/users" => "users#index"
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'
  get "/users/:id" => 'users#show'
  delete "/users/:id" => 'users#destroy'
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # maps
  get "/maps" => "maps#index"
  get "/maps/new" => 'maps#new'
  post "/maps" => 'maps#create'
  get "/maps/:id" => 'maps#show'
  delete "/maps/:id" => 'maps#destroy'
  get "/maps/:id/edit" => 'maps#edit'
  patch "/maps/:id" => 'maps#update'

  # character
  resources :characters
  # get "/characters" => "characters#index"
  # get "/characters/new" => 'characters#new'
  # post "/characters" => 'characters#create'
  # get "/characters/:id" => 'characters#show'
  # delete "/characters/:id" => 'characters#destroy'
  # get "/characters/:id/edit" => 'characters#edit'
  # patch "/characters/:id" => 'characters#update'

  get "/games" => "games#index"
  get "/games/new" => 'games#new'
  post "/games" => 'games#create'
  get "/games/:id" => 'games#show'
  delete "/games/:id" => 'games#destroy'

  get "/players" => "players#index"
  get "/players/new" => 'players#new'
  post "/players" => 'players#create'
  get "/players/:id" => 'players#show'
  delete "/players/:id" => 'players#destroy'

  post "/players/delete" => 'players#delete'


end
