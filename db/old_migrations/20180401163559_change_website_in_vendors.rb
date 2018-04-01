class ChangeWebsiteInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :website, :string, :limit => 50
  end
end
