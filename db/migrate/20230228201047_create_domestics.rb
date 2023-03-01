class CreateDomestics < ActiveRecord::Migration[6.1]
  def change
    create_table :domestic_cleanings do |t| 
      t.string :image_url 
      t.string :name 
      t.integer :price 
      t.timestamps
    end 
  end
end
