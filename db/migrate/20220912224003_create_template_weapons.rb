class CreateTemplateWeapons < ActiveRecord::Migration[6.1]
  def change
    create_table :template_weapons do |t|
      t.integer :template_id
      t.integer :weapon_id
    end
  end
end
