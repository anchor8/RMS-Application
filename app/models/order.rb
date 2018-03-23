class Order < ApplicationRecord
  belongs_to :vendor
  belongs_to :order_status
  belongs_to :customer
  belongs_to :country
  belongs_to :employee
  belongs_to :payment_type
  belongs_to :shipper
  belongs_to :order_line
  belongs_to :state

  def toggle_order
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
    else
      update_attribute(:deleted_at, nil)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Order.create! row.to_hash
    end
  end

end
