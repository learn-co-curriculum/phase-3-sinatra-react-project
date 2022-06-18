class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :location
      t.integer :customer_id
      t.integer :coffee_id
    end
  end
end
