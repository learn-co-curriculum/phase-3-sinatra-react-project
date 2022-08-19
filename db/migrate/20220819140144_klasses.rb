class Klasses < ActiveRecord::Migration[6.1]
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :klass_levels
      t.integer :hit_die
      t.string :proficiencies
      t.string :proficiency_choices
      t.string :saving_throws
    end
  end
end
