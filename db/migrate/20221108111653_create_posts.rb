class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :comment_id
      t.string :title
      t.string :content
      t.string :category
      t.timestamps
    end
  end
end
