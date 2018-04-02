class ChangeOrderDateDate < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :order_date, :date
  end
end
