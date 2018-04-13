# Routes
Rails.application.routes.draw do

  # Devise
  devise_for :employees, controllers: { registrations: 'registrations' }

  # Resources
  resources :customer_statuses
  resources :employees
  resources :orders do collection { post :import } end
  resources :customers do collection { post :import } end
  resources :vendors do collection { post :import } end
  resources :employee_statuses
  resources :shippers
  resources :payment_types
  resources :countries do collection { post :import } end
  resources :order_statuses
  resources :vendor_statuses
  resources :states do collection { post :import } end
  resources :order_lines do collection { post :import } end
  resources :products do collection { post :import } end

  # Namespaces
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

  # Toggle Admin
  match '/pages/employee/admin/:id', to: 'pages#toggle_admin',
                                     as: 'toggle_admin',
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

  # Toggle Order Status
  match '/pages/order/status/:id', to: 'pages#toggle_order_status',
                                   as: 'toggle_order_status',
                                   via: 'put'

  # Toggle Product Status
  match '/pages/order/product/status/:id', to: 'pages#toggle_product_status',
                                           as: 'toggle_product_status',
                                           via: 'put'

  # Update Order
  match '/pages/customer/update/:id', to: 'pages#update_customer',
                                      as: 'update_customer',
                                      via: 'patch'

  # Pages
  get 'pages/dashboard', to: 'pages#dashboard', as: 'dashboard'

  get 'pages/usermgmt', to: 'pages#usermgmt', as: 'usermgmt'

  get 'pages/customermgmt', to: 'pages#customermgmt', as: 'customermgmt'

  get 'pages/vendormgmt', to: 'pages#vendormgmt', as: 'vendormgmt'

  get 'pages/shippingmgmt', to: 'pages#shippingmgmt', as: 'shippingmgmt'

  get 'pages/ordermgmt', to: 'pages#ordermgmt', as: 'ordermgmt'

  get 'pages/reports_customers', to: 'pages#reports_customers', as: 'reports_customers'

  get 'pages/reports_employees', to: 'pages#reports_employees', as: 'reports_employees'

  get 'pages/reports_orders', to: 'pages#reports_orders', as: 'reports_orders'

  get 'pages/reports_products', to: 'pages#reports_products', as: 'reports_products'

  get 'pages/reports_statuses', to: 'pages#reports_statuses', as: 'reports_statuses'

  get 'pages/reports_vendors', to: 'pages#reports_vendors', as: 'reports_vendors'

  get 'pages/importmgmt', to: 'pages#importmgmt', as: 'importmgmt'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
