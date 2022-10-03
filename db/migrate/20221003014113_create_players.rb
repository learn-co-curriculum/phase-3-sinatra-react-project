class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :number
      t.string :status
      t.boolean :is_drafted
      t.string :team_name
      t.string :team_location
      t.string :team_logo
      t.string :image
    end
  end
end
