Rails.application.routes.draw do
  get 'admin_user/index'
  root 'admin_user#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
