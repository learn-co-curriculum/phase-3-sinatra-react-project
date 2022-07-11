class CreateHoleScores < ActiveRecord::Migration[6.1]
  def change
    create_table :hole_scores do |t|
      t.integer :hole_num
      t.integer :par
      t.integer :num_strokes
      t.integer :num_putts
      t.boolean :fairway_hit
      t.integer :round_id
    end
  end
end
