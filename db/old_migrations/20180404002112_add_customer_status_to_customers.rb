class AddCustomerStatusToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :customer_status, foreign_key: true
  end
end
