class CreateSkillTable < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :name
    end
  end
end
