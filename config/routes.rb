Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :products 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'products#index'

end



