class AddColumnsToCharSkillTable < ActiveRecord::Migration[6.1]
  def change
    add_column :char_skills, :race_id, :integer
    add_column :char_skills, :klass_id, :integer
  end
end
