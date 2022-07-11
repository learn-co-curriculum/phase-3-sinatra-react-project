class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :restaurant_id
      t.float :rating
    end
  end
end
