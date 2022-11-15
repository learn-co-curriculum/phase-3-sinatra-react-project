class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :likes
      t.integer :dislikes
      t.boolean :favorited?
      t.integer :restaurant_id
      t.integer :user_id
      t.string :review_detail_comment
      t.timestamps
    end
  end
end
