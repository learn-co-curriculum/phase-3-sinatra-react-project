class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :username
      t.integer :user_id
      t.timestamps
    end
  end
end


# change out user_id for username to display on front end 