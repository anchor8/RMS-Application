class AddNumberOfItemsToOrderLines < ActiveRecord::Migration[5.1]
  def change
    add_column :order_lines, :number_of_items, :integer
  end
end
