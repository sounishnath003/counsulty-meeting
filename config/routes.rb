require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :meetings do 
    resources :comments
  end

  devise_for :users
  get 'active-sessions', :to => "meetings#active_sessions"
  root to: 'home#index'
  resources :users, :only => [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
