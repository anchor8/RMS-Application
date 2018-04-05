class AddDefaultToPaymentType < ActiveRecord::Migration[5.1]
  def change
    change_column :orders, :payment_type_id, :integer, :default => 2
  end
end
