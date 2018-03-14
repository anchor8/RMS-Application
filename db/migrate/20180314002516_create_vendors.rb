class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.references :state, foreign_key: true
      t.references :vendor_status, foreign_key: true
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
