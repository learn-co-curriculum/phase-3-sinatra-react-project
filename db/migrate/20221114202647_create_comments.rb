class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :likes
      t.boolean :is_liked
      t.datetime :comment_date
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end    
  end
end
