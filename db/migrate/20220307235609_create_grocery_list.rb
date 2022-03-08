class CreateGroceryList < ActiveRecord::Migration[6.1]
  def change
    create_table :grocery_lists do |t|
      t.string :title
      t.references :item
      t.references :category
    end
  end
end