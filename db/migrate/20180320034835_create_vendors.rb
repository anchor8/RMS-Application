class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.references :state, foreign_key: true
      t.references :vendor_status, foreign_key: true
      t.string :vendor_name
      t.string :contact_name
      t.string :job_title
      t.string :work_phone
      t.string :mobile
      t.string :fax
      t.string :vendor_email
      t.string :vendor_cc_email
      t.string :website
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
