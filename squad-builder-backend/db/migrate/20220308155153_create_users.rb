class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gamertag
      t.integer :games_id
      t.integer :skills_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
