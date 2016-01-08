class AddColumnToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :name, :string
    add_reference :categories, :blog, index: true, foreign_key: true
  end
end
