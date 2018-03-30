class AddOrderIdToOrderLines < ActiveRecord::Migration[5.1]
  def change
    add_column :order_lines, :order_id, :bigint
    add_index :order_lines, :order_id
  end
end
