class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cuisine_id
      t.integer :times_cooked
      t.string :instructions
    end
  end
end
