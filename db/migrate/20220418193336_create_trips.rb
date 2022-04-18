class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t| 
      t.integer :museum_id, :city_id
      t.string :notes, :trip_title
    end
  end
end
