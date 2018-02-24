Rails.application.routes.draw do
  devise_for :employees
  root 'pages#dashboard'
  get 'pages/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get 'pages/usermgmt', to: 'pages#usermgmt', as: 'usermgmt'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
