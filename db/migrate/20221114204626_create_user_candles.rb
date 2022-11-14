class CreateUserCandles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_candles do |t|
      t.integer :user_id
      t.integer :candle_id
    end
  end
end
