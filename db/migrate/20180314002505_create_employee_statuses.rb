class CreateEmployeeStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :employee_statuses do |t|
      t.string :employee_status_type

      t.timestamps
    end

    create_table :order_lines do |t|
      t.belongs_to :employee, index: true
      t.string :Fname
      t.string :Lname
      t.string :Email
      t.string :Phone


      t.timestamps
    end
  end
end
