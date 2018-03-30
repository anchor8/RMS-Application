class DropOrderLines < ActiveRecord::Migration[5.1]
  def change
    drop_table :order_lines
  end
end
