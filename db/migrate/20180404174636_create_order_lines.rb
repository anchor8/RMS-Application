class CreateOrderLines < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lines do |t|
      t.references :product, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
