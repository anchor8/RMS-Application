Rails.application.routes.draw do
  # Devise
  devise_for :employees

  # Resources
  resources :employees
  resources :orders
  resources :customers
  resources :vendors
  resources :employee_statuses
  resources :order_lines
  resources :ship_via
  resources :payment_types
  resources :countries
  resources :order_statuses
  resources :vendor_statuses
  resources :states

  # Root
  root 'pages#index'

  # Destroy Employee
  match '/pages/:id', to: 'pages#toggle_employee',
                      as: 'toggle_employee',
                      via: 'put'

  # Pages
  get 'pages/dashboard', to: 'pages#dashboard',
                         as: 'dashboard'

  get 'pages/usermgmt', to: 'pages#usermgmt',
                        as: 'usermgmt'

  get 'pages/customermgmt', to: 'pages#customermgmt',
                            as: 'customermgmt'

  get 'pages/vendormgmt', to: 'pages#vendormgmt',
                          as: 'vendormgmt'

  get 'pages/shippingmgmt', to: 'pages#shippingmgmt',
                            as: 'shippingmgmt'

  get 'pages/ordermgmt', to: 'pages#ordermgmt',
                         as: 'ordermgmt'

  get 'pages/reports', to: 'pages#reports',
                       as: 'reports'

  get 'pages/datatables', to: 'pages#datatables',
                          as: 'datatables'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
