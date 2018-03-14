class Customer < ApplicationRecord
  belongs_to :state
  has_many :orders
end
