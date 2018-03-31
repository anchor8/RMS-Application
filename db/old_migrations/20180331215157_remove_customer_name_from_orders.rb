class RemoveCustomerNameFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :customer_name
  end
end
