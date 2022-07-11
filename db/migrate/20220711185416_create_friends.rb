class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.integer :user_id
      t.integer :friend_id
    end
  end
end
