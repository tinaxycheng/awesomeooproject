class AddVideolinkToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :videolink, :string
  end
end
