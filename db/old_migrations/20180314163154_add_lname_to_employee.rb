class AddLnameToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :lname, :string
  end
end
