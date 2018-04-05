class AddDefaultToOrderStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :order_status_id, :integer, :default => 1
  end
end
