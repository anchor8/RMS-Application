class AddFnameToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :fname, :string
  end
end
