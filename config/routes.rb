Rails.application.routes.draw do
  resources :change_implementations
  resources :change_approves
  resources :change_impacts
  devise_for :admins
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :change_requests
  root :to => 'change_requests#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
