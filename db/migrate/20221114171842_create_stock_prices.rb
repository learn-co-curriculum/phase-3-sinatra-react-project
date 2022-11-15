class CreateStockPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_prices do |t|
      t.integer :current_price
      t.integer :stock_id
      t.timestamps 
    end
  end
end
