class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t| 
      t.string :trip_title
    end
  end
end
