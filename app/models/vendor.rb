class Vendor < ApplicationRecord
  belongs_to :state
  belongs_to :vendor_status
  has_many :orders
end
