class ChangeCustomerMobile < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :mobile, :string, limit: 26
  end
end
