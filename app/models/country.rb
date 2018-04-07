# Country Model
class Country < ApplicationRecord
  # Relationships
  has_many :orders

  # Validations
  validates :country_name, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s'.&)(\/-]+\s*$\z/, message: "Only letters, commas, dashes, parenthesis, or spaces for country name allowed"}

  # Import countries
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end
end
