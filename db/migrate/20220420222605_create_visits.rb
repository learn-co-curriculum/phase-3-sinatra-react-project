class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t| 
      t.integer :city_id, :museum_id, :trip_id
      t.string :notes
    end
  end
end
