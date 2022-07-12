class RenameFriendsForeignKeys < ActiveRecord::Migration[6.1]
  def change
    rename_column :friends, :user_id, :follower_id
    rename_column :friends, :friend_id, :followee_id
  end
end
