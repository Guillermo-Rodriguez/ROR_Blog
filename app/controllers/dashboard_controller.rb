class DashboardController < ApplicationController

	def home
		@blogs = Blog.all
	end 
end
