class AddUserIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :chef_id, :integer
  end
end
