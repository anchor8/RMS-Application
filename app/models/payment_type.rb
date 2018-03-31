class PaymentType < ApplicationRecord
  has_many :orders

  validates :payment_type_description, allow_nil: false, presence: true
  validates :deleted_at, allow_nil: true, presence: false
end
