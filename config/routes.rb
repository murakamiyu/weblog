Rails.application.routes.draw do
  devise_for :users
 root 'blogs#index'
 get 'blogs' => 'blogs#index'
 get 'blogs/new' => 'blogs#new'
 post 'blogs' => 'blogs#create'
 delete 'blogs' => 'blogs#destroy'
 patch 'blogs/:id' => 'blogs#edit'
 get 'blogs/:id/edit' => 'blogs#edit'
 get 'users/:id' => 'users#show'
 
end
