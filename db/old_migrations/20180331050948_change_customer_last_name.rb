class ChangeCustomerLastName < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :customer_last_name, :string, limit: 35, null: false
  end
end
