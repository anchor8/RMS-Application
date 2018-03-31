class PaymentType < ApplicationRecord
  has_many :orders

  validates :payment_type_description, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for payment type description."}
  validates :deleted_at, allow_nil: true, presence: false
end
