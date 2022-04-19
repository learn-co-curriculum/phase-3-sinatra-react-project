class CreatePets < ActiveRecord::Migration[6.1]
    def change
        create_table :pets do |t|
        t.integer :user_id
        t.integer :creature_id
        end 
    end
end
