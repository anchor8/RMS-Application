class Country < ApplicationRecord
  has_many :orders

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end

end
