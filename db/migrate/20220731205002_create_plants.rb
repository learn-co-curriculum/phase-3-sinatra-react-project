class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
    t.string :name
    t.string :description
    t.string :image
    t.integer :likes
    t.integer :user_id
    end
  end
end
