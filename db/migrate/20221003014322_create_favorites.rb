class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :name
      t.integer :user_id
      t.integer :player_id
    end
  end
end
