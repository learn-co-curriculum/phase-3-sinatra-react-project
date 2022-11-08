class CreateListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :list_items do |t|
      t.integer :shopping_list_id
      t.integer :item_id
    end
  end
end
