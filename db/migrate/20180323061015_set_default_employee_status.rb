class SetDefaultEmployeeStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :employee_status_id, :integer, default: 1
  end

end
