class UsersController < ApplicationController
	def show
		redirect_to "/blogs"
		# user = User.find(params[:id])
		# @nickname = current_user.nickname
		# @blogs = user.blogs.page(params[:page]).per(5).order("created_at DESC")
	end
end
