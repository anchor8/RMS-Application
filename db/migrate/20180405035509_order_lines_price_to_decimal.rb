class OrderLinesPriceToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :order_lines, :price, :decimal, precision: 8, scale: 2
  end
end
