class EndorsementsController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		current_user.endorse(current_user, @user)
		respond_to do |format|
			format.html {redirect_to @user}
			format.js
		end
	end

	def destroy
		@user =  User.find(params[:user_id])
		current_user.unendorse(@user)
		respond_to do |format|
			format.html {redirect_to @user}
			format.js
		end
	end

end
