class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.belongs_to :player
      t.belongs_to :word
    end
  end
end
