class CreateCharSkill < ActiveRecord::Migration[6.1]
  def change
    create_table :char_skills do |t|
      t.integer :character_id
      t.integer :skill_id
    end
  end
end
