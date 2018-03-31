class State < ApplicationRecord
  has_many :customers
  has_many :orders
  has_many :vendors

  validates :state_name, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commands, or spaces for state name."}

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      State.create! row.to_hash
    end
  end

end
