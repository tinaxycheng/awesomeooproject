class AddProjectRefToHomepageimage < ActiveRecord::Migration
  def change
  	 add_reference :homepageimages, :project, index: true, foreign_key: true
  end
end
