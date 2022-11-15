class AddColumnsToStockPrices < ActiveRecord::Migration[6.1]
  def change
    add_column :stock_prices, :change_percentage, :float 
    add_column :stock_prices, :change_point, :float 
    add_column :stock_prices, :price, :float 
    add_column :stock_prices, :total_vol, :string 
    remove_column :stock_prices, :current_price

  end
end
