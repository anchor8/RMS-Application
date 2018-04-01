class ChangeCountryName < ActiveRecord::Migration[5.1]
  def change
    change_column :countries, :country_name, :string, :limit => 100
  end
end
