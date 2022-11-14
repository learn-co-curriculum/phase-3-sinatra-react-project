class CreateStockPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_prices do |t|
      t.datetime :date,
      t.float :open,
      t.float :high,
      t.float :low,
      t.float :close,
      t.integer :stock_id
    end
  end
end
