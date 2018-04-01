# Employee model (devise)
class Employee < ApplicationRecord
  # Relationships
  belongs_to :employee_status
  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable

  # Validations
  validate :password_complexity
  validates :deleted_at, allow_blank: true, presence: false
  validates :fname, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for first name allowed"}
  validates :lname, allow_blank: false, presence: true, format: { with: /\A^\s*[a-zA-Z,\s]+\s*$\z/, message: "Only letters, commas, or spaces for last name allowed"}
  validates :phone, allow_blank: false, presence: true, format: { with: /\A^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[-]?\d{3}[-]?\d{4}$\z/, message: "Format ( +1-123-123-1234 )"}

  # Toggle employee
  def toggle_employee
    if !deleted_at
      # Deleted at doesnt exist
      update_attribute(:deleted_at, Time.current)
      update_attribute(:employee_status_id, 1)
    else
      # Deleted at exists
      update_attribute(:deleted_at, nil)
      update_attribute(:employee_status_id, 2)
    end
  end

  # Toggle admin
  def toggle_admin
    if !admin
      # Admin is false
      update_attribute(:admin, true)
    else
      # Admin is true
      update_attribute(:admin, false)
    end
  end

  # Ensure user account is active
  def active_for_authentication?
    super && !deleted_at
  end

  # Provide a custom message for a deleted account
  def inactive_message
    !deleted_at ? super : :deleted_account
  end

  # Timeout
  def timeout_in
    if !deleted_at
      # Deleted doesn't exist for current_employee
      1.year
    else
      # Deleted exists for current employee
      1.second
    end
  end

  # Format employee first and last name
  def formatted_name
    "#{fname} #{lname}"
  end

  private

  # Set password policy
  def password_complexity
    if password.present?
      # Password is present
       if !password.match(/(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[\W])/)
         # Password doesn't match policy
         errors.add :password, "Password requires at least 1 lowercase letter, 1 uppercase letter, 1 digit, 1 symbol."
       end
    end
  end

end
