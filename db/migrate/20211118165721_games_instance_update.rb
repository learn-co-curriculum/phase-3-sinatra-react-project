class GamesInstanceUpdate < ActiveRecord::Migration[6.1]
  def change
    add_column :game_instances, :board, :string
  end
end
