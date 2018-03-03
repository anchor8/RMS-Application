Rails.application.routes.draw do
  # Devise
  devise_for :employees, :controllers => { :registrations => 'employees/registrations' }

  # Resources
  resources :employees

  # Root
  root 'pages#index'

  # Destroy Employee
  match '/pages/:id', to: 'pages#toggle_employee', as: 'toggle_employee', via: 'put'

  # Pages
  get 'pages/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get 'pages/usermgmt', to: 'pages#usermgmt', as: 'usermgmt'
  get 'pages/customermgmt', to: 'pages#customermgmt', as: 'customermgmt'
  get 'pages/vendormgmt', to: 'pages#vendormgmt', as: 'vendormgmt'
  get 'pages/shippingmgmt', to: 'pages#shippingmgmt', as: 'shippingmgmt'
  get 'pages/ordermgmt', to: 'pages#ordermgmt', as: 'ordermgmt'
  get 'pages/reports', to: 'pages#reports', as: 'reports'
  get 'pages/datatables', to: 'pages#datatables', as: 'datatables'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
