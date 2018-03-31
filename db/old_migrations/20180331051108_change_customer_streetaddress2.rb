class ChangeCustomerStreetaddress2 < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :street_address_2, :string, limit: 100
  end
end
