class CreateSkillJoin < ActiveRecord::Migration[6.1]
  def change
    create_table :skill_joins do |t|
      t.integer :skill_id
      t.integer :race_id
      t.integer :klass_id
      t.integer :character_id
    end
  end
end
