class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.references :recipes
      t.references :ingredients # id with index; speeds up SQL query
        # t.belongs_to == t.references # alias for references (Phil's preference)
        # t.integer :ingredients_id # non-indexed, slower SQL lookups
      # ingredients.where(garnish: true) # t.references :garnishes
    end
  end
end
