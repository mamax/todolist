class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.integer :project_id

      t.timestamps null: false
    end
    add_index :tasks, :project_id
  end
end
