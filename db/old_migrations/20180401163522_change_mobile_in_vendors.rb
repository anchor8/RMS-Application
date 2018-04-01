class ChangeMobileInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :mobile, :string, :limit => 26
  end
end
