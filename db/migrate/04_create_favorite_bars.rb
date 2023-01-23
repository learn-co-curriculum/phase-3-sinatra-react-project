class CreateFavoriteBars < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_bars do |t|
      t.string :bar_name
      t.integer :user_id
      t.integer :bar_id
    end
  end
end
