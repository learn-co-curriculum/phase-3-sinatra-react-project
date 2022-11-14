class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :date
      t.integer :rating 
      t.string :review
      t.belongs_to :restaurant
    end
  end
end