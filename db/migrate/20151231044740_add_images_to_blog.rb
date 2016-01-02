class AddImagesToBlog < ActiveRecord::Migration
change_table :blogs do |t|
  t.column :images, :string, array: true
end

change_table :blogs do |t|
  t.remove :attachment
end
end
