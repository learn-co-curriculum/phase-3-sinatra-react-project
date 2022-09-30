class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :business_id
      t.integer :star_rating

      t.timestamps
    end
  end
end
