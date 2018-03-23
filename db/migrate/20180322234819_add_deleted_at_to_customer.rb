class AddDeletedAtToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :deleted_at, :datetime
  end
end
