class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :animal_name
      t.string :breed
      t.integer :age
      t.integer :shelter_id
      t.integer :adopter_id
    end
  end
end
