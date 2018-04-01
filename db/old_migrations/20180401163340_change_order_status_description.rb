class ChangeOrderStatusDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :order_statuses, :order_status_description, :string, :limit => 50
  end
end
