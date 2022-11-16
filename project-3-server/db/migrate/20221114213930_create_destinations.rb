class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :city_name
      t.string :country_name
      t.string :img_url
      t.integer :continent_id
      t.timestamps
    end
  end
end
