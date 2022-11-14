class CreateCandles < ActiveRecord::Migration[6.1]
  def change
    create_table :candles do |t|
      t.string :name
      t.integer :price
    end
  end
end
