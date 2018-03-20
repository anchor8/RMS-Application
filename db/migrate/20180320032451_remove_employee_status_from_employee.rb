class RemoveEmployeeStatusFromEmployee < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, 'employee_status_id'
  end
end
