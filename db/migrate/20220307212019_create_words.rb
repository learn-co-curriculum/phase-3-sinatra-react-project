class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :game_word
      t.boolean :is_used
      t.date :date_used
    end
  end
end

