class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.integer :business_id
      t.integer :team_id
      t.string :name
      t.string :description
      t.string :due_date


    end
  end
end



