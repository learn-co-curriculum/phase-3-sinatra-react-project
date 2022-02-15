class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.float :supply_price
      t.float :retail_price
      t.string :image
    end
  end
end
