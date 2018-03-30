# Pages Controller
class PagesController < ApplicationController
  # Breadcrumb for
  # add_breadcrumb 'Home', :root_path

  def index
    # Breadcrumb for
    add_breadcrumb 'Dashboard', :root_path
  end

  def dashboard
    # Breadcrumb for dashboard
    add_breadcrumb 'Dashboard', dashboard_path
  end

  def usermgmt
    # Breadcrumb for User Management
    add_breadcrumb 'User Management', usermgmt_path
    @employees = Employee.all
    # Last Date for New Employee
    @employee_last_date = Employee.last.created_at
  end

  def toggle_employee
    #
    @employee = Employee.find(params[:id])
    @employee.toggle_employee if current_employee != @employee
    redirect_to usermgmt_path
  end

  def toggle_admin
    #
    @employee = Employee.find(params[:id])
    @employee.toggle_admin if current_employee != @employee
    redirect_to usermgmt_path
  end

  def customermgmt
    # Breadcrumb for Customer Management
    add_breadcrumb 'Customer Management', customermgmt_path
    @customers = Customer.all
    @customer = Customer.new
  end

  def toggle_customer
    # Get customer id and destroy that employee
    @customer = Customer.find(params[:id])
    @customer.toggle_customer
    redirect_to customermgmt_path
  end

  def update_customer
    # Get customer id and destroy that employee
    @customer = Customer.find(params[:id])
    @customer.update_customer
    redirect_to customermgmt_path
  end

  def vendormgmt
    # Breadcrumb for Vendor Management
    add_breadcrumb 'Vendor Management', vendormgmt_path
    @vendors = Vendor.all
    @vendor = Vendor.new
  end

  def toggle_vendor
    # Get customer id and destroy that employee
    @vendor = Vendor.find(params[:id])
    @vendor.toggle_vendor
    redirect_to vendormgmt_path
  end

  def ordermgmt
    # Breadcrumb for Order Management
    add_breadcrumb 'Order Management', ordermgmt_path
    @orders = Order.all
    @order = Order.new
  end

  def toggle_order
    # Get customer id and destroy that employee
    @order = Order.find(params[:id])
    @order.toggle_order
    redirect_to ordermgmt_path
  end

  def toggle_order_status
    # Get customer id and destroy that employee
    @order = Order.find(params[:id])
    @order.toggle_order_status
    redirect_to shippingmgmt_path
  end

  def shippingmgmt
    # Breadcrumb for Shipping Management
    add_breadcrumb 'Shipping Management', shippingmgmt_path
    @orders = Order.all
  end

  def reports
    # Breadcrumb for Reports
    add_breadcrumb 'Reports', reports_path
    @orders = Order.all
    @vendors = Vendor.all
    @customers = Customer.all
    @employees = Employee.all
  end

  def importmgmt
    add_breadcrumb 'Import Management', importmgmt_path
  end

end
