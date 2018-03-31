class ChangeCustomerWebsite < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :website, :string, limit: 50
  end
end
