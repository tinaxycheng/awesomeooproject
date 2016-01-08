class ProjectsController < ApplicationController
  def show
  	@project = Project.find(params[:id])
  	@image1 = @project.images.first
    @images = @project.images.drop(1)
end
end
