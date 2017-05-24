Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :admins
  devise_for :users,  :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :products do
    resources :reviews
    member do
      put 'like', to: 'products#upvote'
      put 'unlike', to: 'products#downvote'
    end
  end

  resources :stores

  resources :styles do
    resources :choices
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'

end
