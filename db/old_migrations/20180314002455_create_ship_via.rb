class CreateShipVia < ActiveRecord::Migration[5.1]
  def change
    create_table :ship_via do |t|
      t.string :ship_via_description

      t.timestamps
    end

    create_table :ship_via do |t|
      t.belongs_to :order, index: true
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
  end
end
