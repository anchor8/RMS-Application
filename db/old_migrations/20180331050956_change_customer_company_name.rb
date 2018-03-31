class ChangeCustomerCompanyName < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :company_name, :string, limit: 100, null: false
  end
end
