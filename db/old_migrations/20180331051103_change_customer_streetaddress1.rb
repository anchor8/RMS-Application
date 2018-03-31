class ChangeCustomerStreetaddress1 < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :street_address_1, :string, limit: 100, null: false
  end
end
