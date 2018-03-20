class DropTables < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :orders, column: 'country_id'
    remove_foreign_key :orders, column: 'customer_id'
    remove_foreign_key :orders, column: 'employee_id'
    remove_foreign_key :orders, column: 'order_line_id'
    remove_foreign_key :orders, column: 'order_status_id'
    remove_foreign_key :orders, column: 'payment_type_id'
    remove_foreign_key :orders, column: 'shipper_id'
    remove_foreign_key :orders, column: 'state_id'
    remove_foreign_key :orders, column: 'vendor_id'

    remove_foreign_key :employees, column: 'employee_status_id'

    remove_foreign_key :customers, column: 'state_id'

    remove_foreign_key :vendors, column: 'state_id'
    remove_foreign_key :vendors, column: 'vendor_status_id'

    drop_table :countries
    drop_table :customers
    drop_table :employee_statuses
    drop_table :order_lines
    drop_table :order_statuses
    drop_table :payment_types
    drop_table :orders
    drop_table :shipper
    drop_table :states
    drop_table :vendor_statuses
    drop_table :vendors

  end
end
