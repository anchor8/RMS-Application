class VendorStatus < ApplicationRecord
  has_many :vendors
  
  validates :vendor_status_type, allow_null: false, presence: true
end
