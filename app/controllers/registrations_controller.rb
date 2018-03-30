# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  before_action only: [:new, :create]
  skip_before_action :require_no_authentication

  # POST /resource
  def create
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      redirect_to usermgmt_url, notice: 'Failed to create new employee, incorrect password. Try again.'
    end
  end

  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
    prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

    resource_updated = update_resource(resource, account_update_params)
    yield resource if block_given?
    if resource_updated
      if is_flashing_format?
        flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
          :update_needs_confirmation : :updated
        set_flash_message :notice, flash_key
      end
      bypass_sign_in resource, scope: resource_name
      respond_with resource, location: after_update_path_for(resource)
    else
      clean_up_passwords resource
      set_minimum_password_length
      redirect_to usermgmt_url, notice: 'Failed to update current employee, incorrect password. Try again.'
    end
  end

  protected

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
    params.require(:employee).permit(:email, :fname, :lname, :employee_status_id, :phone, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:employee).permit(:email, :fname, :lname, :employee_status_id, :phone, :password, :password_confirmation, :current_password)
  end

end
