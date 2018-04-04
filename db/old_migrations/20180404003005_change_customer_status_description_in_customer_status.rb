class ChangeCustomerStatusDescriptionInCustomerStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :customer_statuses, :customer_status_description, :string, :limit => 50
  end
end
