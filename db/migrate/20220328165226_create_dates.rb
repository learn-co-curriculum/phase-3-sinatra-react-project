class CreateDates < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.date :date
      t.integer :day_of_week
      t.boolean :special_date
      t.string :special_date_desc
    end
  end
end
