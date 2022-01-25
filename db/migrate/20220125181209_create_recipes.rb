class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :brew_type
      t.boolean :heated?
      t.string :prep_time
      t.string :measurements
      t.string :instructions
    end
  end
end
