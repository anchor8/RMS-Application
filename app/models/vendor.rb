class Vendor < ApplicationRecord
  belongs_to :state
  belongs_to :vendor_status
end
