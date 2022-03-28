class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :deadline
      t.integer :team_id
      t.timestamps
    end
  end
end
