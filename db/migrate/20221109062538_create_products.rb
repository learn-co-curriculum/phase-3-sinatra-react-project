class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :price
      t.string :description
      t.string :img_url
    end
  end
end
