class AddColumntoMeetup < ActiveRecord::Migration
  def change
  	add_column :meetups, :latitude, :decimal
  	add_column :meetups, :longitude, :decimal
  end
end
