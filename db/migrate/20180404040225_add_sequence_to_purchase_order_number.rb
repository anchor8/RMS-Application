class AddSequenceToPurchaseOrderNumber < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      CREATE SEQUENCE orders_purchase_order_number_seq START WITH 101;
      ALTER TABLE orders ALTER COLUMN purchase_order_number SET DEFAULT nextval('orders_purchase_order_number_seq');
    SQL
  end
end
