class CreateTravelers < ActiveRecord::Migration[6.1]
  def change
    create_table :travelers do |t|
      t.string :name
    end
  end
end
