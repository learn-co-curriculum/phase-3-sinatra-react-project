class AddItemsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
    end
  end
end
