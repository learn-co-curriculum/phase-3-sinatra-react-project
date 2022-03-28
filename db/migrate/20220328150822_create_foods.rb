class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.integer :user_id
      t.integer :fridge_id
      t.string :name
      t.integer :quantity
      t.string :category
    
      t.timestamps
    end
    
  end
end
