class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :spell_name
      t.text :spell_description
    end
  end
end
