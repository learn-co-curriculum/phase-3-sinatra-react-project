class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name     
      t.string :contact             
      t.string :days_wanted
      t.string :image 
      t.integer :walker_id
      end
  end
end
