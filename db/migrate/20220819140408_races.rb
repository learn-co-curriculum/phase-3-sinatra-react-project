class Races < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.string :name
      t.string :speed
      t.string :ability_bonuses
      t.string :starting_proficiencies
      t.string :proficiency_choices
      t.string :languages
      t.string :size
      t.string :traits
    end
  end
end
