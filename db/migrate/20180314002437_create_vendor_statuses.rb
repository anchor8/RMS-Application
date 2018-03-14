class CreateVendorStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_statuses do |t|
      t.string :VendorStatusType

      t.timestamps
    end
  end
end
