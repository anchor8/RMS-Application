class State < ApplicationRecord
  has_many :customers
  has_many :orders
  has_many :vendors
  
  validates :state_name, allow_null: false, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      State.create! row.to_hash
    end
  end

end
