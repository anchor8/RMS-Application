class AddDefaultToShipper < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :shipper_id, :integer, :default => 5
  end
end
