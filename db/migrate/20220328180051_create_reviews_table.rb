class CreateReviewsTable < ActiveRecord::Migration[6.1]
    def change
      create_table :reviews do |t|
        t.string :content
        t.integer :rating
        t.references :user
        t.references :house
      end
    end
  end