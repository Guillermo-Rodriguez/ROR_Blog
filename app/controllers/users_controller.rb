class UsersController < ApplicationController


	def index
		@usuarios = User.all
	end


	def newUser
		@minimum_password_length = 6
		@usuario = User.new
	end 

	def create
		@usuario = User.new(user_params)
		if @usuario.save
			redirect_to indexUsers_path
		else
			render :newUser
		end 
	end

	def edit
 		#@blog = Blog.find(params[:id_blog])
 	end

 	def update
 		#@blog = Blog.find(params[:id_blog]) 		
 		#if blog.update(blog_params)
			#redirect_to homeBlogs_path
		#else
		#render :editBlog
		#end 
	end 

	def delete
		@user = User.find(params[:id_user])
		@user.destroy
		redirect_to indexUsers_path
	end

	private 
		def user_params
			#params.require(:usuario)permit()
		end  
end
