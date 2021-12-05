class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :movie
      t.references :show
      t.references :user
      t.timestamps
    end
    
  end
end
