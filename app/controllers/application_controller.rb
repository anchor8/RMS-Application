# Application Controller
class ApplicationController < ActionController::Base
  # Protect from forgery
  protect_from_forgery with: :exception

  # authenticate employee before anything
  before_action :authenticate_employee!
end
