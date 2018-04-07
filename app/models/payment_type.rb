# Payment Type Model
class PaymentType < ApplicationRecord
  # Relationships
  has_many :orders

  # Validations
  validates :payment_type_description, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for payment type description allowed"}
  validates :deleted_at, allow_blank: true, presence: false
end
