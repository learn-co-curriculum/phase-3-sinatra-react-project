class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :bio
      t.string :photo
      t.boolean :adopted
      t.integer :agency_id
    end
  end
end
