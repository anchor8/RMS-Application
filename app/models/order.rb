class Order < ApplicationRecord
  # Relationships
  belongs_to :vendor
  belongs_to :order_status
  belongs_to :customer
  belongs_to :country
  belongs_to :employee
  belongs_to :payment_type
  belongs_to :shipper
  belongs_to :state
  has_many :order_lines, dependent: :destroy
  accepts_nested_attributes_for :order_lines

  # Validations
  validates :order_date, allow_blank: false, presence: true, :timeliness => {:type => :date}
  validates :ship_date, allow_blank: true, presence: false, :timeliness => {:type => :date}
  validates :purchase_order_number, uniqueness: true
  validates :order_total, allow_blank: false, presence: true, format: { with: /\A^\d{1,20}(\.\d{0,2})?$\z/, message: "Order total must be only digits and 2 precision, example: ( 11111.11 ) "}
  validates :shipping_number, presence: true, unless: ->(order){order.order_status_id == 1}
  validates :ship_date, presence: true, unless: ->(order){order.order_status_id == 1}
  validates :street_address_1, allow_blank: false, presence: true
  validates :street_address_2, allow_blank: true, presence: false
  validates :city, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for city allowed"}
  validates :zip_code, allow_blank: false, presence: true, format: { with: /\A^\d{5}(?:[-\s]\d{4})?$\z/, message: "Format ( 12345 ) or ( 12345-4321 )"}
  validates :deleted_at, allow_blank: true, presence: false

  # Toggle order
  def toggle_order
    if !deleted_at
      # Deleted at doesn't exist
      update_attribute(:deleted_at, Time.current)
      update_attribute(:order_status_id, '3')
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
      update_attribute(:order_status_id, '1')
    end
  end

  # Toggle order status
  def toggle_order_status
    if order_status_id == 1
      # Order status is not shipped
      update_attribute(:order_status_id, '2')
      update_attribute(:ship_date, Time.current)
    else
      # Order status is shipped
      update_attribute(:order_status_id, '1')
      update_attribute(:ship_date, nil)
    end
  end

  # Import orders
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Order.create! row.to_hash
    end
  end
end
