class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.string :payment_type_description

      t.timestamps
    end
  end
end
