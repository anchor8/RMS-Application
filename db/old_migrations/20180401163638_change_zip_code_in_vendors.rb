class ChangeZipCodeInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :zip_code, :string, :limit => 10
  end
end
