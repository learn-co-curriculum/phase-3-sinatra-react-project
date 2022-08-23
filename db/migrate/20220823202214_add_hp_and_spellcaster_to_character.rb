class AddHpAndSpellcasterToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :is_spellcaster, :boolean
    add_column :characters, :hp, :integer
  end
end
