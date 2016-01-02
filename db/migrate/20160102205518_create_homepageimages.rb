class CreateHomepageimages < ActiveRecord::Migration
  def change
    create_table :homepageimages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
