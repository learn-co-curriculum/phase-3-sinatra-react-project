class CreateFridges < ActiveRecord::Migration[6.1]
  def change
    create_table :fridges do |t|
      t.string :location
    
      t.timestamps
    end
    

  end
end
