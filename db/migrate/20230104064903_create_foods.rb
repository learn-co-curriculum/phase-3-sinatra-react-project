class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name 
      t.string :img_url
      t.string :spice
      t.timestamps
    end
  end
end
