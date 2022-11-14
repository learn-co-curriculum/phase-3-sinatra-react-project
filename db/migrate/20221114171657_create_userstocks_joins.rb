class CreateUserstocksJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :userstocks_joins do |t|
      t.integer :user_id
      t.integer :stock_id
    end
  end
end
