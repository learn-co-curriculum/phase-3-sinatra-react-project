class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :likes
      t.boolean :is_liked
      t.string :image_url
      t.datetime :date_posted
      t.string :user_posted_username
      
      t.timestamps
    end    
  end
end
