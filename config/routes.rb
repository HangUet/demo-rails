Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
  # devise_scope :user do
  #   get 'sign_in', to: 'devise/sessions#new'
  #   # get 'sign_up', to: 'devise/registrations#new'
  # end
  resources :comments
  get 'pages/info'
  resources :ideas, only: [:show, :index, :new, :create]
  root 'ideas#index'
  resource :user, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
