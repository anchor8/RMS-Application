class OrderStatus < ApplicationRecord
  has_many :orders

  validates :order_status_description, allow_nil: false, presence: true
end
