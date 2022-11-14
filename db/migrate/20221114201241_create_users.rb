class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :image_url
      t.integer :followers
      t.integer :following    

      t.timestamps
    end    
  end
end
