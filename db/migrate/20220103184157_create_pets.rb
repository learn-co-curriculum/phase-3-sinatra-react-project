class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :species
      t.references :household

      t.timestamps
    end
  end
end
