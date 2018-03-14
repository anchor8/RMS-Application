class CreateStates < ActiveRecord::Migration[5.1]
  def change

    create_table :states do |t|
      t.string :StateName

      t.timestamps
    end

      create_table :customers do |t|
        t.belongs_to :state, index: true
        t.string :CompanyName
        t.string :CustomerFirstName
        t.string :CustomerLastName
        t.string :JobTitle
        t.string :WorkPhone
        t.string :Mobile
        t.string :Fax
        t.string :CustomerEmail
        t.string :CCEmail
        t.string :Website
        t.string :SocialMediaAddress
        t.string :StreetAddress1
        t.string :StreetAddress2
        t.string :City
        t.string :Zipcode

        t.timestamps
      end

    create_table :orders do |t|
      t.belongs_to :state, index: true
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

    create_table :vendors do |t|
      t.belongs_to :state, index: true
      t.string :VendorName
      t.string :ContactName
      t.string :JobTitle
      t.string :WorkPhone
      t.string :Mobile
      t.string :Fax
      t.string :VendorEmail
      t.string :VendorCCEmail
      t.string :Website
      t.string :StreetAddress1
      t.string :StreetAddress2
      t.string :City
      t.string :Zipcode

      t.timestamps
    end

    end
  end
