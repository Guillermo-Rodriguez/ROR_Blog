class BlogsController < ApplicationController


	def homeBlogs 
		@blogs = Blog.all
	end 

	def index
		@blogs = Blog.all
	end



	def showBlog
		@blog = Blog.find(params[:id_blog])
		$id_blog = @blog.id
		@comentarios = Comentario.where(id_blog: @blog.id)
		@comentario = Comentario.new
	end


	def showBlogAdmin
		@blog = Blog.find(params[:id_blog])
		$id_blog = @blog.id
		@comentarios = Comentario.where(id_blog: @blog.id)
		@comentario = Comentario.new
	end

	def addComentario
		@comentario = Comentario.new(comentario_params)
		if @comentario.save
			redirect_to showBlog_path($id_blog)
		else 
			render :showBlog
		end 
	end 

	def newBlog
		@blog = Blog.new
		@currentUser = current_user.id_user
	end 

	def createBlog
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to indexBlogs_path
		else
			render :newBlog
		end 
 	end

 	def editBlog 
 		@blog = Blog.find(params[:id])
		@currentUser = current_user.id_user

 	end

 	def updateBlog
 		@blog = Blog.find(params[:id]) 		
 		if @blog.update(blog_params)
			redirect_to indexBlogs_path
		else
			render :editBlog
		end 
	end 

	def deleteBlog
		@blog = Blog.find(params[:id])
		@blog.destroy

		redirect_to indexBlogs_path
	end

	def deleteComentario
		@comentario = Comentario.find(params[:id_comentario])
		@comentario.destroy

		redirect_to showBlogAdmin_path($id_blog)
	end


	private 
		def blog_params
			params.require(:blog).permit(:titulo, :picture, :contenido, :user_id, :categoria_id)
		end 

	private 
		def comentario_params
			params.require(:comentario).permit(:id_blog, :nombre, :email, :comentario)
		end 

end
