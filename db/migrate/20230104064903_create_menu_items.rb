class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :name 
      t.string :img_url
      t.string :spice
      t.timestamps
    end
  end
end
