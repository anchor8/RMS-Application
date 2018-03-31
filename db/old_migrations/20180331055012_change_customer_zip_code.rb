class ChangeCustomerZipCode < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :zip_code, :string, limit: 10, null: false
  end
end
