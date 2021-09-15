class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :max_HP
      t.integer :current_HP
      t.integer :max_energy
      t.integer :current_energy
      t.integer :shield
    end
  end
end
