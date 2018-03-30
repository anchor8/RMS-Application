class AddColumnOrderIdToOrderLines < ActiveRecord::Migration[5.1]
  def change
    add_column :order_lines, :order_id, :integer
  end
end
