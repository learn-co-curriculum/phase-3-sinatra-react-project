class AddImagesToCandles < ActiveRecord::Migration[6.1]
  def change
    add_column :candles, :image, :string
  end
end
