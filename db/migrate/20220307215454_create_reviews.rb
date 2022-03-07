class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :critic_id
      t.integer :movie_id
      t.string :content
    end
  end
end
