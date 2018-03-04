# Update Employees with admin role
class AddAdminToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :admin, :boolean, default: false
  end
end
