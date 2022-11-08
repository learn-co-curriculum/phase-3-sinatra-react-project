class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string  :title
      t.string  :image
      t.string  :description
      t.integer :room
      t.integer :location_id
      t.integer :caretaker_contact
      t.integer :rent
    end
  end
end
