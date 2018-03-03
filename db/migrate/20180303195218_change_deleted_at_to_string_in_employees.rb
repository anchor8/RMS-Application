class ChangeDeletedAtToStringInEmployees < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :deleted_at, :string
  end
end
