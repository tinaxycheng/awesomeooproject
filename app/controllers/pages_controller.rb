class PagesController < ApplicationController
	def about
	@lat_lng = cookies[:lat_lng].split("|")
    @projects=Project.all
    end 

	def gallery
	end

	def projects
	    @projects=Project.all.order('created_at')
	end

	def join
		@user= current_user
	end
end
class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_oo_path # Or :prefix_to_your_route
  end
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end
end
