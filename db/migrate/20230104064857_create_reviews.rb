class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name 
      t.text :description
      t.integer :rating
      t.integer :menu_item_id
      t.timestamps
    end
  end
end
