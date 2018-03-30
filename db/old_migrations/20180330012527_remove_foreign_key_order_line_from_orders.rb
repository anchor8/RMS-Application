class RemoveForeignKeyOrderLineFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_index :orders, :column => [:order_line_id]
  end
end
