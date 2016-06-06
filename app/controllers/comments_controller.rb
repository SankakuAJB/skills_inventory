class CommentsController < ApplicationController

	def create
		@user = User.find(params[:user_id])
		@comment = @user.active_comments.create(comment_params)
		@comment.commenter_id = current_user.id
		@comment.user_id = @user.id
		if @comment.save
			redirect_to user_path(params[:user_id])
		else
			flasah.now[:danger] = "Comment did not save"
		end
	end			


	private

		def comment_params
			params.require(:comment).permit(:comment, :annonymous_flag)
		end

end
