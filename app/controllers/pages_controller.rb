# Pages Controller
class PagesController < ApplicationController
  # GET /
  def index
    # Breadcrumb for index to dashboard
    add_breadcrumb 'Dashboard', :root_path
  end

  # GET /pages/dashboard
  def dashboard
    # Breadcrumb for dashboard
    add_breadcrumb 'Dashboard', dashboard_path
  end

  # GET /pages/usermgmt
  def usermgmt
    # Breadcrumb for User Management
    add_breadcrumb 'User Management', usermgmt_path

    @employees = Employee.all
    @employee_last_date = Employee.last.created_at
  end

  # PUT /pages/employee/1
  def toggle_employee
    @employee = Employee.find(params[:id])
    @employee.toggle_employee if current_employee != @employee
    redirect_to usermgmt_path
  end

  # PUT /pages/employee/admin/1
  def toggle_admin
    @employee = Employee.find(params[:id])
    @employee.toggle_admin if current_employee != @employee
    redirect_to usermgmt_path
  end

  # GET /pages/customermgmt
  def customermgmt
    # Breadcrumb for Customer Management
    add_breadcrumb 'Customer Management', customermgmt_path

    @customers = Customer.all
    @customer = Customer.new
  end

  # PUT /pages/customer/1
  def toggle_customer
    @customer = Customer.find(params[:id])
    @customer.toggle_customer
    redirect_to customermgmt_path
  end

  # PATCH /pages/customer/update/1
  def update_customer
    @customer = Customer.find(params[:id])
    @customer.update_customer
    redirect_to customermgmt_path
  end

  # GET /pages/vendormgmt
  def vendormgmt
    # Breadcrumb for Vendor Management
    add_breadcrumb 'Vendor Management', vendormgmt_path
    @vendors = Vendor.all
    @vendor = Vendor.new
  end

  # PUT /pages/vendor/1
  def toggle_vendor
    @vendor = Vendor.find(params[:id])
    @vendor.toggle_vendor
    redirect_to vendormgmt_path
  end

  # GET /pages/ordermgmt
  def ordermgmt
    # Breadcrumb for Order Management
    add_breadcrumb 'Order Management', ordermgmt_path

    @orders = Order.all
    @order = Order.new
  end

  # PUT /pages/order/1
  def toggle_order
    @order = Order.find(params[:id])
    @order.toggle_order
    redirect_to ordermgmt_path
  end

  # PUT /pages/order/status/1
  def toggle_order_status
    @order = Order.find(params[:id])
    @order.toggle_order_status
    redirect_to shippingmgmt_path
  end

  # PUT /pages/order/product/status/1
  def toggle_product_status
    @product = Product.find(params[:id])
    @product.toggle_product_status
    redirect_to new_product_path
  end

  # GET /pages/shippingmgmt
  def shippingmgmt
    # Breadcrumb for Shipping Management
    add_breadcrumb 'Shipping Management', shippingmgmt_path

    @orders = Order.all
  end

  # GET /pages/reports
  def reports
    # Breadcrumb for Reports
    if params['origin'] == "dashboard"
      add_breadcrumb 'Dashboard', dashboard_path
      add_breadcrumb 'Reports'
    else
      add_breadcrumb 'Reports'
    end

    @orders = Order.all
    @vendors = Vendor.all
    @customers = Customer.all
    @employees = Employee.all
  end

  # GET /pages/importmgmt
  def importmgmt
    # Breadcrumb for Import Management
    add_breadcrumb 'Import Management', importmgmt_path
  end

end
