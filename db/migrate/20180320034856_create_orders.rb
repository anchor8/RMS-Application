class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :vendor, foreign_key: true
      t.references :order_status, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :country, foreign_key: true
      t.references :employee, foreign_key: true
      t.references :payment_type, foreign_key: true
      t.references :shipper, foreign_key: true
      t.references :order_line, foreign_key: true
      t.references :state, foreign_key: true
      t.integer :shipping_number
      t.string :customer_name
      t.integer :purchase_order_number
      t.datetime :order_date
      t.datetime :ship_date
      t.decimal :order_total
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
