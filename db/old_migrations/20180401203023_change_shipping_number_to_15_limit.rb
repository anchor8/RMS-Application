class ChangeShippingNumberTo15Limit < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :shipping_number, :string, :limit => 15
  end
end
