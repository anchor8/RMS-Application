class State < ApplicationRecord
  # Relationships
  has_many :customers
  has_many :orders
  has_many :vendors

  # Scope
  scope :states_by_name, -> { states.order(state_name: :asc) }

  # Validations
  validates :state_name, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z.,\s]+\s*$\z/, message: "Only letters, commas, periods, or spaces for state name allowed"}

  # Import states
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      State.create! row.to_hash
    end
  end

end
