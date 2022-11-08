class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string  :room
      t.integer :apartment_number
      t.string  :image
      t.string  :description
      t.integer :block_id
      t.integer :rent
    end
  end
end
