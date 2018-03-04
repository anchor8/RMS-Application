# Add deleted at column to employees
class AddDeletedAtColumnToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :deleted_at, :datetime
  end
end
