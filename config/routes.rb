Rails.application.routes.draw do
<<<<<<< HEAD
  root 'addmin_user#index'
  
  get 'addmin_user/index'
  get 'addmin_user/edit'
  post 'addmin_user/edit'
  post 'addmin_user/new'
  	
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  get 'admin_user/index'
  root 'admin_user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 5377ff4b0b342c9cb3ad92d91ab101b8729e10a8
end
