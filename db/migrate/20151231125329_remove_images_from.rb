class RemoveImagesFrom < ActiveRecord::Migration
  def change
  	remove_column :blogs, :images, :string
  end
end
