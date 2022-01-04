class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :score
      t.references :product
      t.timestamps
    end
  end
end
