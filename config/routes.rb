Rails.application.routes.draw do
  root to: 'users#new'
  get 'users/new' => 'users#new' , as: 'users_new'  
  post 'users/create' => 'users#create' , as: 'users_create'

end
