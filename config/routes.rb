Rails.application.routes.draw do

  root 'movies#index'

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
  get "/characters" => "characters#index"
  get "/characters/new" => 'characters#new'
  post "/characters" => 'characters#create'
  get "/characters/:id" => 'characters#show'
  delete "/characters/:id" => 'characters#destroy'
  get "/characters/:id/edit" => 'characters#edit'
  patch "/characters/:id" => 'characters#update'





end
