class AddImageToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :image, :string
  end
end
