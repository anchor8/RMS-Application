class Changeemployeeadmin < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :admin, :boolean, default: false
  end
end
