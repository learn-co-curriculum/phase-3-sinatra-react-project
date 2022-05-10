class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review_details
      t.integer :star_rating
      t.integer :customer_id
      t.integer :restaurant_id
    end
  end
end
