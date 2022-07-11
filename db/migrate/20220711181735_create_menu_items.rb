class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.integer :price
      t.boolean :is_special?
      t.integer :item_id
    end
  end
end
