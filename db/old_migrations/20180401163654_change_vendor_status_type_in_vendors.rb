class ChangeVendorStatusTypeInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendor_statuses, :vendor_status_type, :string, :limit => 50
  end
end
