class CreateEmployeeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_statuses do |t|
      t.string :employee_status_type

      t.timestamps
    end
  end
end
