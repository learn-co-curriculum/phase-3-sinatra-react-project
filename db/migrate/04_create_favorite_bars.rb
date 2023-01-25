class CreateFavoriteBars < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_bars do |t|
      t.boolean :favorited?
      t.integer :user_id
      t.integer :bar_id
    end
  end
end
