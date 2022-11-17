class AddColorColumnToCandles < ActiveRecord::Migration[6.1]
  def change
    add_column :candles, :color, :string
  end
end
