Rails.application.routes.draw do
  devise_for :users
 root 'blogs#index'

 resources :blogs ,only: [:new, :create, :destroy, :update, :edit]
 resources :users, only: [:show]  
end

