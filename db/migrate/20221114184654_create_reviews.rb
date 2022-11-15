class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.boolean :likes
      t.boolean :dislikes
      t.boolean :favorited?
      t.integer :restaurant_id
      t.integer :user_id
      t.string :review_detail_comment
      t.timestamps
    end
  end
end
