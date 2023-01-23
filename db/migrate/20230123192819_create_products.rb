class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :Products do |t|
      t.integer :farm_id
      t.string :name
      t.string :category
      t.string :description
      t.string :picture_link
      t.integer :price
      t.integer :stock
    end
  end
end
