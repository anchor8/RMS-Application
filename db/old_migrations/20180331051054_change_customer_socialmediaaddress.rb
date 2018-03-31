class ChangeCustomerSocialmediaaddress < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :social_media_address, :string, limit: 50
  end
end
