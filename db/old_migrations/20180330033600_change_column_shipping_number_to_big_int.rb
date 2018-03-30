class ChangeColumnShippingNumberToBigInt < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :shipping_number, :bigint
  end
end
