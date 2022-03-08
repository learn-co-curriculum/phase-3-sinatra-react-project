class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.integer :users_id
      t.string :skill_name
    end
  end
end
