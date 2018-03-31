class Shipper < ApplicationRecord
  has_many :orders
  
  validates :shipper_description, allow_null: false, presence: true
end
