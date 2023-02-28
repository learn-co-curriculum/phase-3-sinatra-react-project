class CreateLaundrys < ActiveRecord::Migration[6.1]
  def change
    create_table :laundry_services do |t|
      t.string :image_url 
      t.string :name 
      t.integer :quantity 
      t.integer :wash_price 
      t.integer :dry_price 
      t.timestamps 

    end 
  end
end
