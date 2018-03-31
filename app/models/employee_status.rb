class EmployeeStatus < ApplicationRecord
  has_many :employees

  validates :employee_status_type, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for employee status."}
end
