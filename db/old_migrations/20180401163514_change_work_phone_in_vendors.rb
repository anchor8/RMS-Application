class ChangeWorkPhoneInVendors < ActiveRecord::Migration[5.1]
  def change
    change_column :vendors, :work_phone, :string, :limit => 26
  end
end
