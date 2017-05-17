Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :admins
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :searches

  resources :products

  resources :stores

  resources :styles do
    resources :choices
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'

end
