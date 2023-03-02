class CreatePetsTable < ActiveRecord::Migration[6.1]
  def change 
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :image_url
      t.integer :user_id 
    end
  end
end