class ChangeShipDateDate < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :ship_date, :date
  end
end
