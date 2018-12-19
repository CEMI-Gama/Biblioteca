Rails.application.routes.draw do
  get 'users/new' => 'users#new' , as: 'users_new'  
  post 'users/create' => 'users#create' , as: 'users_create'

end
