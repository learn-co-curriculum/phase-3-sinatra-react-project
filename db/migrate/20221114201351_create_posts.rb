class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :description
      t.integer :likes
      t.boolean :is_liked
      t.string :image_url
      t.datetime :date_posted
<<<<<<< HEAD
=======
      t.string :comments
>>>>>>> dulat
      
      t.timestamps
    end    
  end
end
