class AddCategoryToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :category, :string
  end
end
