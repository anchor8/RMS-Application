class ChangeCustomerCcemail < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :customer_cc_email, :string, limit: 254
  end
end
