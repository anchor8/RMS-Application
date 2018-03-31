class ChangeCustomerEmail < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :customer_email, :string, limit: 254, null: false
  end
end
