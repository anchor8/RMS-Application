class ChangeFaxInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :fax, :string, :limit => 26
  end
end
