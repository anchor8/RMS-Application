class VendorStatus < ApplicationRecord
  has_many :vendors

  validates :vendor_status_type, allow_nil: false, presence: true
end
