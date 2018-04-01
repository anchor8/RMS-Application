class ChangeCityInOrders < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :city, :string, :limit => 60
  end
end
