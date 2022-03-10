class Dogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age     
      t.string :breed     
      t.string :size     
      t.string :description     
      t.boolean :walk_time     
      t.string :image     
      t.integer :user_id
    end
  end
end
