# Employees Controller
class EmployeesController < Devise::RegistrationsController
  # Generate email for password recovery
  def generate_new_password_email
    @employee = Employee.find(params[:employee_id])
    Employee.send_reset_password_instructions flash[:notice] = "Reset password instructions have been sent to #{user.email}."
  end
end
