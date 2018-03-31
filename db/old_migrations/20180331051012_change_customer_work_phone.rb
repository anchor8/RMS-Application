class ChangeCustomerWorkPhone < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :work_phone, :string, limit: 26, null: false
  end
end
