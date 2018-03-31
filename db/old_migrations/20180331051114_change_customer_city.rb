class ChangeCustomerCity < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :city, :string, limit: 60, null: false
  end
end
