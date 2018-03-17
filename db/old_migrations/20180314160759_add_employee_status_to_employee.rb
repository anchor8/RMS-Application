class AddEmployeeStatusToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :employee_status, foreign_key: true
  end
end
