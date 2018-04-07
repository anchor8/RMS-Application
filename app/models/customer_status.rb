# Customer Status Model
class CustomerStatus < ApplicationRecord
  # Relationships
  has_many :customers
end
