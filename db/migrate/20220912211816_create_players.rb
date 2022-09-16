class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :username
      t.string :email
      t.integer :rank
    end
  end
end
