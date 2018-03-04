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
    @employee = Employee.all
    # Last Date for New Employee
    @employee_last_date = Employee.last.created_at
  end

  def toggle_employee
    # Get employee id and destroy that employee
    @employee = Employee.find(params[:id])
    @employee.toggle_employee
    flash[:success] = 'Employee destroyed.'
    redirect_to usermgmt_path
  end

  def customermgmt
    # Breadcrumb for Customer Management
    add_breadcrumb 'Customer Management', customermgmt_path
  end

  def vendormgmt
    # Breadcrumb for Vendor Management
    add_breadcrumb 'Vendor Management', vendormgmt_path
  end

  def ordermgmt
    # Breadcrumb for Order Management
    add_breadcrumb 'Order Management', ordermgmt_path
  end

  def shippingmgmt
    # Breadcrumb for Shipping Management
    add_breadcrumb 'Shipping Management', shippingmgmt_path
  end

  def reports
    # Breadcrumb for Reports
    add_breadcrumb 'Reports', reports_path
  end

  def datatables
    # Breadcrumb for Data Tables
    add_breadcrumb 'Data Tables', datatables_path
  end
end
