module BlogHelper
	def categorias_for_select
		CategoriaBlog.pluck(:nombre_categoria, :id_categoria)
	end
end
