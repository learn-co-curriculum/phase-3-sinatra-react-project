class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.integer :buyer_id
      t.integer :car_id
      t.timestamps
    end
  end
end
