class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :place_id
      t.string :review
      t.integer :star_rating
    end
  end
end