class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.integer :user_id
      t.string :genre
      t.string :body
    end
  end
end
