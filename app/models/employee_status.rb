class EmployeeStatus < ApplicationRecord
  has_many :employees
  
  validates :employee_status_type, allow_null: false, presence: true
end
