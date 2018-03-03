# Application Record
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

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
end
