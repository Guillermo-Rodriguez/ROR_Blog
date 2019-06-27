class CategoriaBlogsController < ApplicationController
	
	def index
		@categorias = CategoriaBlog.all
	end

	def newCategoria
		@categoria = CategoriaBlog.new
	end 

	def createCategoria
		@categoria = CategoriaBlog.new(categoria_params)
		if @categoria.save
			redirect_to indexCategoria_path
		else
			render :newCategoria
		end 
 	end

 	def editCategoria 
 		@categoria = CategoriaBlog.find(params[:id_categoria])
 	end

 	def updateCategoria
 		@categoria = CategoriaBlog.find(params[:id_categoria]) 		
 		if @categoria.update(categoria_params)
			redirect_to indexCategoria_path
		else
			render :editCategoria
		end 
	end 

	def deleteCategoria
		@categoria = CategoriaBlog.find(params[:id_categoria])
		@categoria.destroy
		redirect_to indexCategoria_path
	end

	private
		def categoria_params
			params.require(:categoria).permit(:nombre_categoria)
	end

 
end
