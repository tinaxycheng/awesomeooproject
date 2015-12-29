class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :tags
      t.decimal :location

      t.timestamps null: false
    end
  end
end
