class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.integer :time_created

      t.timestamps null: false
    end
  end
end
