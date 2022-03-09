class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age     
      t.string :breed     
      t.string :size     
      t.string :description     
      t.integer :walk_time #in minutes     
      t.string :image     
      t.integer :client_id
      t.integer :walker_id
    end
  end
end