class BlogsController < ApplicationController

	def index
	  	@blogs = Blog.all
	end

	def new
	end

	def create
		Blog.create(text: blog_params[:text], user_id: current_user.id)
	end

	def destroy
		blog = Blog.find(params[:id])
		if blog.user_id ==current_user.id
		 blog.destroy 
		end
	end

	def edit
		@blogs = Blog.find(params[:id])
	end
	
	def update
		blog = Blog.find(params[:id])
		if blog.user_id ==current_user.id
		 blog.update(blog_params) 
		end
	end

	private
	def blog_params
		params.permit(:text)	
	end	

end
