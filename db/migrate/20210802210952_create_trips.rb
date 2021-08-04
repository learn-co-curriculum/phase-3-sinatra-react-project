class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
      t.references :traveler, foreign_key: true
    end
  end
end
