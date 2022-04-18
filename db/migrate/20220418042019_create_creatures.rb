class CreateCreatures < ActiveRecord::Migration[6.1]
  def change
    create_table :creatures do |t|
      t.string :creature_type 
      t.string :film
      t.string :image_url
      t.integer :user_id
    end
  end
end
