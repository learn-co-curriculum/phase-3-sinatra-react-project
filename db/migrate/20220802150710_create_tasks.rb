class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

      t.integer :project_id
      t.string :name
      t.boolean :complete
      t.string :description
      t.string :skills_needed
      
    end
  end
end
