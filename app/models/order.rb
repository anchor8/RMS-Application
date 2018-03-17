class Order < ApplicationRecord
  belongs_to :vendor
  belongs_to :order_status
  belongs_to :customer
  belongs_to :country
  belongs_to :employee
  belongs_to :payment_type
  belongs_to :ship_via
  belongs_to :order_line
  belongs_to :state
  has_many :order_lines
end
