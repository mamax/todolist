class AddPositionToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :position, :integer
    add_column :tasks, :done, :boolean
  end
end
