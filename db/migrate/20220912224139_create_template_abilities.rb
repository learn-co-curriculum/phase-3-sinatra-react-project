class CreateTemplateAbilities < ActiveRecord::Migration[6.1]
  def change
    create_table :template_abilities do |t|
      t.integer :template_id
      t.integer :ability_id
    end
  end
end
