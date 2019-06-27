class UsuariosController < ApplicationController

	def index
		#@usuarios = Usuario.all
	end


	def new
		#@usuario = Usuario.new
		#password = 'the secret password'
		#new_hashed_password = User.new(:password => password).encrypted_password
	end 

	def create
		#@usuario = Usuario.new(blog_params)
		#if usuario.save
			#redirect_to homeBlogs_path
		#else
		#render :newBlog
		#end 
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
		#@blog = Blog.find(params[:id_blog])
		#@blog.destroy
		#redirect_to homeBlog
	end

	private 
		def usuario_params
			#params.require(:usuario).permit()
	end  
end
