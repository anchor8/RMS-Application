# Employee model (devise)
class Employee < ApplicationRecord
  belongs_to :employee_status
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable

  # instead of deleting, indicate the user requested a delete & timestamp it
  def toggle_employee
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
    else
      update_attribute(:deleted_at, nil)
    end
  end

  # ensure user account is active
  def active_for_authentication?
    super && !deleted_at
  end

  # provide a custom message for a deleted account
  def inactive_message
    !deleted_at ? super : :deleted_account
  end

  def timeout_in
    if !deleted_at
      1.year
    else
      1.second
    end
  end
end
