class ChangeCustomerZipcode < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :zip_code, :string, limit: 9, null: false
  end
end
