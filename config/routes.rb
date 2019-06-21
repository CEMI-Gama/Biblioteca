Rails.application.routes.draw do
  get 'home/index'
  root to: 'pages#secret'
  get 'users/new' => 'users#new' , as: 'users_new'
  post 'users/create' => 'users#create' , as: 'users_create'
  get 'users/show/:id' => 'users#show', as: 'users_show'
  patch 'users/update/:id' => 'users#update', as: 'users_update'
  get 'users/index' => 'users#index', as: 'users_index'
  get 'users/edit/:id' => 'users#edit', as: 'users_edit'
  delete 'users/destroy/:id' => 'users#destroy', as: 'users_destroy'

  get 'login'     => 'sessions#new' , as: 'sessions_new'
  post 'login'    => 'sessions#create' , as: 'sessions_create'
  delete 'logout' => 'sessions#destroy'  , as: 'sessions_destroy'

  get 'pages/secret' => 'pages#secret', as: 'pages_secret'

  #books
  get 'books/new' => 'books#new', as: 'books_new'
  post 'books/create' => 'books#create', as: 'books_create'
  get 'books/show/:id' => 'books#show', as: 'books_show'
  get 'books/index' => 'books#index', as: 'books_index'
  get 'books/edit/:id' => 'books#edit', as: 'books_edit'
  patch 'books/update/:id' => 'books#update', as: 'books_update'

end
