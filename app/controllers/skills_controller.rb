class SkillsController < ApplicationController

	def create
		@skill = current_user.skills.build(skill_params)
		if @skill.save
			flash[:success] = "skill saved"
			redirect_to authenticated_root_path(:id => current_user.id)
		else
			redirect_to new_skill_path
		end
	end




	private

		def skill_params
			params.require(:skill).permit(:skill, :level)
		end

end
