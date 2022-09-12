class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.integer :score 
      t.integer :user_id
    end
  end
end
