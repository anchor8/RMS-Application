class ChangeFnameInEmployees < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :fname, :string, :limit => 50
  end
end
