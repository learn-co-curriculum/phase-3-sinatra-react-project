class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :text
      t.belongs_to :character
      t.belongs_to :location

      t.timestamps
    end
  end
end
