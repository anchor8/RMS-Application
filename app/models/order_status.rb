class OrderStatus < ApplicationRecord
  has_many :orders
  
  validates :order_status_description, allow_null: false, presence: true
end
