class CreateMeetups < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.string :title
      t.text :description
      t.datetime :time
      t.text :formatted_address
      t.integer :time_created
      t.timestamps null: false
      add_reference :meetups, :user, index: true, foreign_key: true
    end
  end
end
