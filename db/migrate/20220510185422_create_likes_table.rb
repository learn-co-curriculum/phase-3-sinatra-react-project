class CreateLikesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, foreign_key: :true
      t.integer :liked_user_id
    end
  end
end
