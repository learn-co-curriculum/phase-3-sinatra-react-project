class CreateItemCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :item_categories do |t|
      t.string :name
    end
  end
end
