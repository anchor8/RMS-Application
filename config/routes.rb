Rails.application.routes.draw do

  # Devise
  devise_for :employees, controllers: { registrations: 'registrations' }

  # Resources
  resources :employees
  resources :orders do collection { post :import } end
  resources :customers do collection { post :import } end
  resources :vendors do collection { post :import } end
  resources :employee_statuses
  resources :order_lines do collection { post :import } end
  resources :shippers
  resources :payment_types
  resources :countries do collection { post :import } end
  resources :order_statuses
  resources :vendor_statuses
  resources :states do collection { post :import } end

  namespace :admin do
    resources :employees, only: :show do
      post :generate_new_password_email
    end
  end

  # Root
  root 'pages#index'

  # Destroy Employee
  match '/pages/employee/:id', to: 'pages#toggle_employee',
                               as: 'toggle_employee',
                               via: 'put'

  # Destroy Customer
  match '/pages/customer/:id', to: 'pages#toggle_customer',
                               as: 'toggle_customer',
                               via: 'put'

  # Destroy Vendor
  match '/pages/vendor/:id', to: 'pages#toggle_vendor',
                             as: 'toggle_vendor',
                             via: 'put'

  # Destroy Order
  match '/pages/order/:id', to: 'pages#toggle_order',
                            as: 'toggle_order',
                            via: 'put'

  # Update Order
  match '/pages/customer/update/:id', to: 'pages#update_customer',
                                      as: 'update_customer',
                                      via: 'patch'

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

  get 'pages/importmgmt', to: 'pages#importmgmt',
                          as: 'importmgmt'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
