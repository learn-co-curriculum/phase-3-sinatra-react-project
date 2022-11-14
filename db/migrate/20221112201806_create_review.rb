class CreateReview < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
     t.string :comment
     t.integer :rating
     t.integer :car_id
     t.timestamp :created_at
    end 
  end
end
