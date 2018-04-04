class AddUniqueIndexToPurchaseOrderNumber < ActiveRecord::Migration[5.1]
  def change
    add_index :orders, :purchase_order_number, unique: true
  end
end
