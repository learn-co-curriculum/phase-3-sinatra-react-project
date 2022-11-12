class Properties < ActiveRecord::Migration[6.1]
  def up
    create_table :properties do |t|
      t.string :cover_photo
      t.integer :price
      t.integer :rent_frequency
      t.integer :rooms
      t.string :title
      t.integer :baths
      t.string :area
      t.string :is_verified
      t.integer :external_id
      t.string :description
      t.string :typen
      t.string :purpose
      t.string :furnishing_status
      t.string :amenities
      t.string :photos
      t.integer :agency_id
      t.integer :client_id

      t.timestamps
      t.references :agencies, :clients, foreign_key:true
    end
  end
  def down
    drop_table :properties
  end
end
