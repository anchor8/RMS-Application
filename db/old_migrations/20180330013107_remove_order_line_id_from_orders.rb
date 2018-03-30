class RemoveOrderLineIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :order_line_id
  end
end
