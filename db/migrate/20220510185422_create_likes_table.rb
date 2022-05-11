class CreateLikesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :liked_user_id
    end
  end
end
