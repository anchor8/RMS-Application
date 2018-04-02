class Shipper < ApplicationRecord
  # Relationships
  has_many :orders

  # Validations
  validates :shipper_description, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: 'Only letters, commas, or spaces for shipper description allowed' }
end
