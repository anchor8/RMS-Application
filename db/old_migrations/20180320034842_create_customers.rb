class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.references :state, foreign_key: true
      t.string :company_name
      t.string :customer_first_name
      t.string :customer_last_name
      t.string :job_title
      t.string :work_phone
      t.string :mobile
      t.string :fax
      t.string :customer_email
      t.string :customer_cc_email
      t.string :website
      t.string :social_media_address
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
