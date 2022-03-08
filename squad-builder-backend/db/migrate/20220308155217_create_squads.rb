class CreateSquads < ActiveRecord::Migration[6.1]
  def change
    create_table :squads do |t|
      t.integer :squad_members
      t.string :squad_name
      t.integer :squad_size
      t.integer :squad_plays
      t.integer :squad_skills
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
