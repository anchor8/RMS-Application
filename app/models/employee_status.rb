class EmployeeStatus < ApplicationRecord
  # Relationships
  has_many :employees

  # Validations
  validates :employee_status_type, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for employee status allowed"}
end
