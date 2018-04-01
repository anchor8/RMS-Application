class VendorStatus < ApplicationRecord
  # Relatinships
  has_many :vendors

  # Validations
  validates :vendor_status_type, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for vendor status allowed"}
end
