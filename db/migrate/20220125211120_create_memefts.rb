class CreateMemefts < ActiveRecord::Migration[6.1]
  def change
    create_table :memefts do |t|
      t.string :title
      t.integer :price
      t.string :creator
      t.string :owner
      t.boolean :for_sale
      t.integer :user_id
    end
  end
end
