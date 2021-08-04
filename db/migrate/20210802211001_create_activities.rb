class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
    t.references :day, foreign_key: true
    t.datetime :start_time
    t.datetime :end_time
    t.string :name
    t.string :description
    end
  end
end
