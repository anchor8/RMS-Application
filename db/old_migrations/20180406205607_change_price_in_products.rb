class ChangePriceInProducts < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, :decimal, :scale => 2, :precision => 8
  end
end
