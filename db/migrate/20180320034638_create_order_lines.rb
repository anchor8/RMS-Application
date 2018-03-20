class CreateOrderLines < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lines do |t|
      t.integer :item_number
      t.string :item_description
      t.integer :item_quantity
      t.decimal :item_price
      t.decimal :item_total_cost
      t.decimal :tax_rate
      t.decimal :tax_amount

      t.timestamps
    end
  end
end
