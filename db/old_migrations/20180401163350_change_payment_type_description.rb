class ChangePaymentTypeDescription < ActiveRecord::Migration[5.1]
  def change
    change_column :payment_types, :payment_type_description, :string, :limit => 50
  end
end
