Rails.application.routes.draw do
  get 'pages/secret'
  root to: 'users#new'
  get 'users/new' => 'users#new' , as: 'users_new'  
  post 'users/create' => 'users#create' , as: 'users_create'
  get '/login'     => 'sessions#new' , as: 'sessions_new'
  post '/login'    => 'sessions#create' , as: 'sessions_create'
  delete '/logout' => 'sessions#destroy'  , as: 'sessions_destroy'

end
