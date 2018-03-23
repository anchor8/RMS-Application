# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  before_action only: [:new, :create]
  skip_before_action :require_no_authentication

  private

  def sign_up(resource_name, resource)
    true
  end
end
