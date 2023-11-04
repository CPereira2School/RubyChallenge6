Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # resources :customers, only: %i[index]
  get '/', to: 'customers#index'
  get '/customers/missing_email', to: 'customers#missing_email'
  get '/customers/alphabetized', to: 'customers#alphabetized'

  # root "articles#index"
end
