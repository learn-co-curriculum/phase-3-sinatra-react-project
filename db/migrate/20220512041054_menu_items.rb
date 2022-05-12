class MenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table "menu_items" do |t|
      t.string "name"
      t.integer "price"
      t.string "img"
      t.integer "menu_id"
    end
  end
end
