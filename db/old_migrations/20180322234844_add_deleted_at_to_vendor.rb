class AddDeletedAtToVendor < ActiveRecord::Migration[5.1]
  def change
    add_column :vendors, :deleted_at, :datetime
  end
end
