class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
      t.integer :meetup_id
      t.integer :attendant_id

      t.timestamps null: false
    end
  add_index :attendings, :meetup_id
  add_index :attendings, :attendant_id
  add_index :attendings, [:meetup_id, :attendant_id], unique: true
  end
end
