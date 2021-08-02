class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :location
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
