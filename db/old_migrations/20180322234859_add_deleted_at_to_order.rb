class AddDeletedAtToOrder < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :deleted_at, :datetime
  end
end
