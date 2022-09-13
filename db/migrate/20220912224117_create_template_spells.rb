class CreateTemplateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :template_spells do |t|
      t.integer :template_id
      t.integer :spell_id
    end
  end
end
