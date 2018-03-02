# Pages Controller
class PagesController < ApplicationController
  # add_breadcrumb 'Home', :root_path

  def index
    # add_breadcrumb 'Dashboard', dashboard_path
  end

  def dashboard
    add_breadcrumb 'Dashboard', dashboard_path
  end

  def usermgmt
    add_breadcrumb 'User Management', usermgmt_path
  end

  def customermgmt
    add_breadcrumb 'Customer Management', customermgmt_path
  end

  def vendormgmt
    add_breadcrumb 'Vendor Management', vendormgmt_path
  end

  def ordermgmt
    add_breadcrumb 'Order Management', ordermgmt_path
  end

  def shippingmgmt
    add_breadcrumb 'Shipping Management', shippingmgmt_path
  end

  def reports
    add_breadcrumb 'Reports', reports_path
  end

  def datatables
    add_breadcrumb 'Data Tables', datatables_path
  end
end
