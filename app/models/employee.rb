# Employee model (devise)
class Employee < ApplicationRecord
  belongs_to :employee_status
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable

  validate :password_complexity
  validates :deleted_at, allow_null: true, presence: false
  validates :admin, allow_null: false, presence: true
  validates :fname, allow_null: false, presence: true
  validates :lname, allow_null: false, presence: true
  validates :phone, allow_null: false, presence: true

  def password_complexity
    if password.present?
       if !password.match(/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/)
         errors.add :password, "Password requires at least 1 number and 1 letter."
       end
    end
  end

  # instead of deleting, indicate the user requested a delete & timestamp it
  def toggle_employee
    if !deleted_at
      update_attribute(:deleted_at, Time.current)
      update_attribute(:employee_status_id, 1)
    else
      update_attribute(:deleted_at, nil)
      update_attribute(:employee_status_id, 2)
    end
  end

  def toggle_admin
    if !admin
      update_attribute(:admin, true)
    else
      update_attribute(:admin, false)
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

  def formatted_name
    "#{fname} #{lname}"
  end

end
