class CreateWalkers < ActiveRecord::Migration[6.1]
  def change
    create_table :walkers do |t|
      t.string :name     
      t.string :contact    
      t.string :about     
      t.string :availability     
      t.string :review     
      t.integer :rating  
      t.string :image
    end
  end
end