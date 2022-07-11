class CreateSightings < ActiveRecord::Migration[6.1]
  def change
    create_table :sightings do |t|
      t.string :animal_id
      t.string :habitat_id
      t.timestamp :seen
    end
  end
end
