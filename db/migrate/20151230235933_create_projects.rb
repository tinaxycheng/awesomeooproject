class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.decimal :lat
      t.decimal :lng
      t.string :tag
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
