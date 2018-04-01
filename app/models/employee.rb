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
  validates :deleted_at, allow_nil: true, presence: false
  validates :fname, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for first name allowed"}
  validates :lname, allow_nil: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for last name allowed"}
  validates :phone, allow_nil: false, presence: true, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}

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

  private

  def password_complexity
    if password.present?
       if !password.match(/(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[\W])/)
         errors.add :password, "Password requires at least 1 lowercase letter, 1 uppercase letter, 1 digit, 1 symbol."
       end
    end
  end

end
