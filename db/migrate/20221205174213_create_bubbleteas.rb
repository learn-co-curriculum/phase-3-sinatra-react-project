class CreateBubbleteas < ActiveRecord::Migration[6.1]
  def change

    create_table :bubbleteas do |t|

      t.string :base
      t.string :topping_1
      t.string :topping_2
      t.integer :size


    end
  end
end
