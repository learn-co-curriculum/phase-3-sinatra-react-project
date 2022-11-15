class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :rating
      t.belongs_to :user
      t.belongs_to :movie
    end
  end
end
