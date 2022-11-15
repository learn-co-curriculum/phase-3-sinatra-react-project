class CreateInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :inventories do |t|
      t.integer :product_id
      t.integer :S_quantity
      t.integer :M_quantity
      t.integer :L_quantity
    end
  end
end
