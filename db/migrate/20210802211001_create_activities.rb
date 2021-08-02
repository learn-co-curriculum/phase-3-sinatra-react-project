class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
    t.references :traveler_id, foreign_key: true, null: false
    t.references :destination_id, foreign_key: true, null: false
    t.datetime :start_time
    t.datetime :end_time
    t.string :activity
    t.string :description
    end
  end
end
