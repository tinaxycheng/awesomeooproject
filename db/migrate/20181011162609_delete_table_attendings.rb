class DeleteTableAttendings < ActiveRecord::Migration
  def change
  	drop_table :Attendings
  	drop_table :Categories

  end
end
