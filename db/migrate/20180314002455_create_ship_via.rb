class CreateShipVia < ActiveRecord::Migration[5.1]
  def change
    create_table :ship_via do |t|
      t.string :ship_via_description

      t.timestamps
    end
  end
end
