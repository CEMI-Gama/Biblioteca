Rails.application.routes.draw do
  root to: 'pages#secret'
  get 'users/new' => 'users#new' , as: 'users_new'  
  post 'users/create' => 'users#create' , as: 'users_create'
  get '/login'     => 'sessions#new' , as: 'sessions_new'
  post '/login'    => 'sessions#create' , as: 'sessions_create'
  delete '/logout' => 'sessions#destroy'  , as: 'sessions_destroy'
  get '/edit/:id' => 'users#edit', as: 'users_edit'
  patch 'users/update/:id' => 'users#update', as: 'users_update'
  get 'pages/secret' => 'pages#secret', as: 'pages_secret'
  get 'users/show/:id' => 'users#show', as: 'users_show'
  get '/index' => 'users#index', as: 'users_index'
  get '/editadm/:id' => 'users#editadm', as: 'users_editadm'
# nem sei se tinha que fazer isso ou se to fazendo certo
  get 'books/new' => 'books#new', as: 'books_new'
  post 'books/create' => 'books#create', as: 'books_create'
  get 'books/show/:id' => 'books#show', as: 'boooks_show'

end
