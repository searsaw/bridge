Rails.application.routes.draw do
  devise_for :companies
  devise_for :users

  get '/dashboard', to: 'dashboard#index', as: :dashboard_index

  root to: 'home#index'
end
