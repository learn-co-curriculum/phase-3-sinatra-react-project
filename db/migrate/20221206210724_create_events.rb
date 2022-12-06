class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :character_id
      t.integer :arena_id
      t.string :name
      t.string :date
      t.string :type_of_event
    end 
  end
end
