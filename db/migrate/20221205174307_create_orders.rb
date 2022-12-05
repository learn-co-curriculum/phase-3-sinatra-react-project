class CreateOrders < ActiveRecord::Migration[6.1]
  def change

    create_table :orders do |t|

    
      t.integer :price

      #Foreign Keys

      t.integer :customer_id
      t.integer :bubbletea_id


    end
  end
end
