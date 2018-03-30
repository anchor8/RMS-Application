class DropOrderIdFromOrderLines < ActiveRecord::Migration[5.1]
  def change
    remove_column :order_lines, :order_id
  end
end
