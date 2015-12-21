class RenameColumnChefIdToUserId < ActiveRecord::Migration
  def change
    rename_column :tasks, :chef_id, :user_id
  end
end
