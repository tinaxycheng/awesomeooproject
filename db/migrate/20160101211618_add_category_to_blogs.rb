class AddCategoryToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :category, :string
  end
end
