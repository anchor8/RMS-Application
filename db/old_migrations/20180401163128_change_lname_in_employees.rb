class ChangeLnameInEmployees < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :lname, :string, :limit => 50
  end
end
