class RemoveUserIdToProjects < ActiveRecord::Migration
  def change
    remove_index :projects, :user_id
    remove_column :projects, :user_id, :string
  end
end
