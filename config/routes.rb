Rails.application.routes.draw do
  devise_for :employees
  root 'pages#dashboard'
  get 'pages/index'
  get 'pages/dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
