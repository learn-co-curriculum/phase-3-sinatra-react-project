class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :creator
      t.string :desc
      t.string :timeframe
      t.string :status
      t.string :scope
      t.string :approach
      t.timestamps
    end
  end
end
