class RemoveLatFromMeetups < ActiveRecord::Migration
  def change
  	remove_column :Meetups, :lat
  	remove_column :Meetups, :lng
  	remove_column :Meetups, :organizer_id
  	remove_column :Meetups, :compacity
  end
end
