class AddDefaultToEmployeeStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :employee_status_id, :integer, :default => 2
  end
end
