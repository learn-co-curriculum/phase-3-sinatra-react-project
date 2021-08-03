class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
    t.references :traveler, foreign_key: true
    t.references :destination, foreign_key: true
    t.datetime :start_time
    t.datetime :end_time
    t.string :activity
    t.string :description
    end
  end
end
