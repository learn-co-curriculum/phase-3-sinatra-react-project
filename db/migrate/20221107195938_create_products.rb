class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :image_url
      t.string :description
      t.integer :price
      t.integer :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
