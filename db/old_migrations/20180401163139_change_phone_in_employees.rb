class ChangePhoneInEmployees < ActiveRecord::Migration[5.1]
  def change
    change_column :employees, :phone, :string, :limit => 26
  end
end
