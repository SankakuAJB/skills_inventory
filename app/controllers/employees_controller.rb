class EmployeesController < ApplicationController

	def create
		@employee = current_user.employees.build(employee_params)
		if @employee.save
			flash[:success] = "position saved"
			redirect_to authenticated_root_path(:id => current_user.id)
		else
			redirect_to new_employee_path
		end
	end



	private

		def employee_params
			params.require(:employee).permit(:work_email, :position, :employer)
		end

end
