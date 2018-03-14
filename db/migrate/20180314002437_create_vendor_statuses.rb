class CreateVendorStatuses < ActiveRecord::Migration[5.1]
  def change

    create_table :vendor_statuses do |t|
      t.string :VendorStatusType

      t.timestamps
    end

    create_table :vendors do |t|
      t.belongs_to :vendor_statuses, index: true
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
