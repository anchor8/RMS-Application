class ChangeVendorEmailInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :vendor_email, :string, :limit => 254
  end
end
