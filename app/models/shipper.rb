class Shipper < ApplicationRecord
  has_many :orders

  validates :shipper_description, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for shipper description allowed"}
end
