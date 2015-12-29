class PagesController < ApplicationController
	def about
	@lat_lng = cookies[:lat_lng].split("|")
	end
	def gallery
	end
	def projects
	end
	def join
	end
end
