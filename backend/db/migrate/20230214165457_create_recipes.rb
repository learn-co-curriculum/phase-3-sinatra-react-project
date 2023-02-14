class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title 
      t.string :image_URL
      t.string :ingredients 
      t.string :steps 
      t.string :cuisine
      t.integer :time 
      t.string :difficulty 
      t.integer :user_id 
    end
  end
end
