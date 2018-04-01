class ChangeStreetAddress2InOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :street_address_2, :string, :limit => 100
  end
end
