class State < ApplicationRecord
  has_many :customers
  has_many :orders
  has_many :vendors
end
