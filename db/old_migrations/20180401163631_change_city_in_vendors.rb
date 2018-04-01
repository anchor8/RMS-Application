class ChangeCityInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :city, :string, :limit => 60
  end
end
