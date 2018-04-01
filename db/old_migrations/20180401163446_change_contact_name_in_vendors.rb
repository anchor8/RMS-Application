class ChangeContactNameInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :contact_name, :string, :limit => 100
  end
end
