class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.date :round_date
      t.integer :player_id
    end
  end
end
