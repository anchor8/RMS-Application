class Vendor < ApplicationRecord
  belongs_to :state
  belongs_to :vendor_status
  has_many :orders

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Vendor.create! row.to_hash
    end
  end

end
