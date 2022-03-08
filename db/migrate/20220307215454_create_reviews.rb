class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :critic_id
      t.integer :movie_id
      t.string :content
      t.string :creation_date
      t.string :score_ori
      t.string :score_sentiment
      t.string :review_url
      t.string :review_content
    end
  end
end
