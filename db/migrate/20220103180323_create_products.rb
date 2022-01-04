class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :department
      t.string :description
      t.integer :unit_price
      t.string :img_url
      t.integer :inventory
      t.timestamps
    end
  end
end
