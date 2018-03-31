class Order < ApplicationRecord
  belongs_to :vendor
  belongs_to :order_status
  belongs_to :customer
  belongs_to :country
  belongs_to :employee
  belongs_to :payment_type
  belongs_to :shipper
  belongs_to :state
  
  validates :shipping_number, allow_null: false, presence: true
  validates :company_name, allow_null: false, presence: true
  validates :purchase_order_number, allow_null: false, presence: true
  validates :order_date, allow_null: false, presence: true
  validates :ship_date, allow_null: false, presence: true
  validates :order_total, allow_null: false, presence: true
  validates :street_address_1, allow_null: false, presence: true
  validates :street_address_2, allow_null: true, presence: false
  validates :city, allow_null: false, presence: true
  validates :zip_code, allow_null: false, presence: true
  validates :deleted_at, allow_null: true, presence: false

  def toggle_order
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
    else
      update_attribute(:deleted_at, nil)
    end
  end

  def toggle_order_status
    if order_status_id == 1
      update_attribute(:order_status_id, '2')
      update_attribute(:ship_date, Time.current)
    else
      update_attribute(:order_status_id, '1')
      update_attribute(:ship_date, nil)
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Order.create! row.to_hash
    end
  end

end
