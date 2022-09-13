class CreateRemembers < ActiveRecord::Migration[6.1]
    def change
      create_table :remembers do |t|
        t.integer :user_id
        t.integer :category_id
        t.string :remember
        
        t.timestamps
      end
    end
  end