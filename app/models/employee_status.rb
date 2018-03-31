class EmployeeStatus < ApplicationRecord
  has_many :employees

  validates :employee_status_type, allow_nil: false, presence: true
end
