class ChangeCustomerFirstName < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :customer_first_name, :string, limit: 50, null: false
  end
end
