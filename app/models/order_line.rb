class OrderLine < ApplicationRecord
  has_many :orders

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      OrderLine.create! row.to_hash
    end
  end

end
