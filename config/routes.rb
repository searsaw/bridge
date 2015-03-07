Rails.application.routes.draw do
  devise_for :companies
  devise_for :users

  get '/dashboard', to: 'dashboard#index', as: :dashboard_index
  get '/dashboard/setup', to: 'dashboard#setup', as: :dashboard_setup
  post '/dashboard/setup', to: 'dashboard#setup'

  root to: 'home#index'
end
