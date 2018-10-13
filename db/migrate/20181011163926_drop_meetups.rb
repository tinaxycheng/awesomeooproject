class DropMeetups < ActiveRecord::Migration
  def change
    drop_table :meetups
  
  end
end
