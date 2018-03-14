class AddPhoneToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :phone, :string
  end
end
