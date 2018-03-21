class Customer < ApplicationRecord
  belongs_to :state
  has_many :orders

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Customer.create! row.to_hash
    end
  end

end
