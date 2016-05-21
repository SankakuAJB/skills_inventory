class UsersController < ApplicationController
	before_action :user_signed_in?, only: [:index]

	def index
		@users = User.all 
	end

	def show
		@user = User.find(params[:id])
	end

	def following
		@title = "Following"
		@user = User.find(params[:id])
		@users = @user.following.paginate(page: params[:page])
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@user = User.find(params[:id])
		@users= @user.followers.paginate(page: params[:page])
		render 'show_follow'
	end

	def current_user_home
		redirect_to current_user
	end

end
