class State < ApplicationRecord
  has_many :customers
  has_many :orders
  has_many :vendors

  require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      State.create! row.to_hash
    end
  end

end
