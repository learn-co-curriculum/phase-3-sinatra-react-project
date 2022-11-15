class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :price
      t.integer :subcategory_id
    end
  end
end
