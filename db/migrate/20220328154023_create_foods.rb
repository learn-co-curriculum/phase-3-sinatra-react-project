class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name 
      t.integer :price 
      t.integer :category_id
      t.string :description 
    end
  end
end
