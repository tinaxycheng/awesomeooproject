class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :title
      t.string :type
      t.text :description
      t.datetime :time
      t.text :formatted_address
      t.decimal :lat
      t.decimal :lng
      t.integer :organizer_id
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
