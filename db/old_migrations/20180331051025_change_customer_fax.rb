class ChangeCustomerFax < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :fax, :string, limit: 26
  end
end
