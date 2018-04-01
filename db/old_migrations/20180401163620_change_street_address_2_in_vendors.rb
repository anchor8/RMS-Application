class ChangeStreetAddress2InVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :street_address_2, :string, :limit => 100
  end
end
