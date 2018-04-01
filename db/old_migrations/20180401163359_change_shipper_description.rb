class ChangeShipperDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :shippers, :shipper_description, :string, :limit => 50
  end
end
