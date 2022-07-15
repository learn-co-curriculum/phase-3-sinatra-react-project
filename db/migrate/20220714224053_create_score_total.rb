class CreateScoreTotal < ActiveRecord::Migration[6.1]
  def change
    create_table :score_totals do |t|
      t.string :course_name
      t.string :round_date 
      t.string :score_to_par
      t.string :strokes
      t.string :total_putts
      t.string :fairways_hit
      t.integer :player_id
    end
  end
end
