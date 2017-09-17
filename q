Rails.application.routes.draw do
  root 'addmin_user#index'
  
  get 'addmin_user/index'
  get 'addmin_user/edit'
  post 'addmin_user/edit'
  post 'addmin_user/new'
  	
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
