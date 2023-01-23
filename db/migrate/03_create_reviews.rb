class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.float :star_rating
      t.text :content
      t.integer :bar_id
      t.integer :user_id
    end
  end
end
