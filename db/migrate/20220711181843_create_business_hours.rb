class CreateBusinessHours < ActiveRecord::Migration[6.1]
  def change
    create_table :business_hours do |t|
      t.integer :restaurant_id
      t.integer :day_of_week
      t.time :opens_at
      t.time :closes_at
    end
  end
end
