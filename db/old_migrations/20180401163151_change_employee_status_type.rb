class ChangeEmployeeStatusType < ActiveRecord::Migration[5.1]
  def change
    change_column :employee_statuses, :employee_status_type, :string, :limit => 50
  end
end
