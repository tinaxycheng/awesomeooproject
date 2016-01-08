class RemoveCategoryIdFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :category_id, :string
  end
end
