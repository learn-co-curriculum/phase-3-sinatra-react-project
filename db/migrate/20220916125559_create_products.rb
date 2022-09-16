class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.string :price
      t.integer :category_id
    end
  end
end
