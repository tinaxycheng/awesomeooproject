class AddColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :videolink, :string
  end
end
