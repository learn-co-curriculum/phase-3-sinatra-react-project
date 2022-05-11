class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :course
      t.string :name
      t.string :ingredients
      t.integer :price
      t.string :image_url
      t.integer :restaurant_id
    end
  end
end
