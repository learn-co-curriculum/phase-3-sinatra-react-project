class CreateCandleScents < ActiveRecord::Migration[6.1]
  def change
    create_table :candle_scents do |t|
      t.integer :candle_id
      t.integer :scent_id
    end
  end
end
