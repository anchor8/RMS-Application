# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  before_action only: [:new, :create]
  skip_before_action :require_no_authentication

  private

  def sign_up(resource_name, resource)
    true
  end

  def after_update_path_for(resource)
    usermgmt_path
  end

  def after_sign_up_path_for(resource)
    usermgmt_path
  end

  def sign_up_params
    params.require(:employee).permit(:email, :fname, :lname, :phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:employee).permit(:email, :fname, :lname, :phone, :password, :password_confirmation, :current_password)
  end

end
