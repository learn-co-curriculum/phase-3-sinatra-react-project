class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.text :ticker
      t.text :company
    end
  end
end
