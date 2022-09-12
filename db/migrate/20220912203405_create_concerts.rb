class CreateConcerts < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :date
      t.integer :city_id
      t.integer :band_id
      t.string :venue_name
      t.string :venue_type
    end
  end
end
