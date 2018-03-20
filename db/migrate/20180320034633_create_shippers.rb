class CreateShippers < ActiveRecord::Migration[5.1]
  def change
    create_table :shippers do |t|
      t.string :shipper_description

      t.timestamps
    end
  end
end
