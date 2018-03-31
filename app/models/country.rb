class Country < ApplicationRecord
  has_many :orders
  
  validates :country_name, allow_null: false, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end

end
