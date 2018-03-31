class Shipper < ApplicationRecord
  has_many :orders

  validates :shipper_description, allow_nil: false, presence: true
end
