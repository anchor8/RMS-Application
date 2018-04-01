class ChangeStreetAddress1InOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :street_address_1, :string, :limit => 100
  end
end
