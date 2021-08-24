class GameMigration < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :genre, :integer
    add_column :games, :image, :string
    add_column :games, :genre, :string
  end
end
