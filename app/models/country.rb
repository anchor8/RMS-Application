class Country < ApplicationRecord
  has_many :orders

  validates :country_name, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$/\z, message: "Only letters, commas, or spaces allowed."}

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Country.create! row.to_hash
    end
  end

end
