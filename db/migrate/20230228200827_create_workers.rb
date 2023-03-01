class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :name 
      t.string :phonenumber 
      t.string :gender
      t.string :location 
      t.integer :identification_number 
      t.integer :rating 
      t.timestamps 
    end 
  end
end
