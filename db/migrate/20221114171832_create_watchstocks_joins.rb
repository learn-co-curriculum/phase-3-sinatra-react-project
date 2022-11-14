class CreateWatchstocksJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :watchstocks_joins do |t|
      t.integer :watchlist_id,
      t.integer :stock_id
    end
  end
end
