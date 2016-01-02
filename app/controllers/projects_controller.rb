class ProjectsController < ApplicationController
  def show
  	@project = Project.find(params[:id])
  	@image = @project.images
  end
end
