class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.integer :number_of_guests
	    t.time :reservation
      t.text :notes
      t.integer :table_id
      t.timestamps
    end
  end
end
