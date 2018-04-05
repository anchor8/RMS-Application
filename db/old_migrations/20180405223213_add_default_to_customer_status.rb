class AddDefaultToCustomerStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :customer_status_id, :integer, :default => 2
  end
end
