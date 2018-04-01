class OrderStatus < ApplicationRecord
  # Relationships
  has_many :orders

  # Validations
  validates :order_status_description, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for order status description allowed"}
end
