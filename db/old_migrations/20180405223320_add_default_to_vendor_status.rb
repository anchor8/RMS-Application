class AddDefaultToVendorStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :vendor_status_id, :integer, :default => 4
  end
end
