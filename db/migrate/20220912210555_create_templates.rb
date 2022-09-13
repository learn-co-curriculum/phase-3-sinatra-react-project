class CreateTemplates < ActiveRecord::Migration[6.1]
  def change
    create_table :templates do |t|
      t.integer :level
      t.string :class
      t.string :race
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :spell1
      t.string :spell2
      t.string :ability1
      t.string :ability2
      t.string :weapon1
      t.string :weapon2
    end
  end
end
