class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.integer :follower_id
      t.integer :following_id
    end
  end
end
