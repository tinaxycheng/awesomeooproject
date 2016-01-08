class PagesController < ApplicationController
	def about
	@lat_lng = cookies[:lat_lng].split("|")
    @projects=Project.all
    end 

	def gallery
	end

	def projects
	    @projects=Project.all
	end

	def join
		@user= current_user
	end
end
