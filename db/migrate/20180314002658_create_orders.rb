class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :vendor, foreign_key: true
      t.references :order_status, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :country, foreign_key: true
      t.references :employee, foreign_key: true
      t.references :payment_type, foreign_key: true
      t.references :ship_via, foreign_key: true
      t.references :order_line, foreign_key: true
      t.references :state, foreign_key: true
      t.integer :ShippingNumber
      t.string :CustomerName
      t.integer :PurchaseOrderNumber
      t.datetime :OrderDate
      t.datetime :ShipOnDate
      t.decimal :OrderTotal
      t.string :StreetAddress1
      t.string :StreetAddress2
      t.string :City
      t.string :Zipcode

      t.timestamps
    end

    create_table :orders do |t|
      t.belongs_to :order, index: true
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
