class ChangeVendorCcEmailInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :vendor_cc_email, :string, :limit => 254
  end
end
