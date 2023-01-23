class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :buyer_id
      t.integer :sell_id
      t.string :name
      t.string :category
      t.integer :price
      t.integer :stock
      t.string :description
      t.string :picture_link
    end
  end
end
