# Employees Helper
module EmployeesHelper
  # Get employee resource
  def resource_name
    :employee
  end

  # Set resource to new employee
  def resource
    @resource ||= Employee.new
  end

  # Map devise to employee
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:employee]
  end
end
