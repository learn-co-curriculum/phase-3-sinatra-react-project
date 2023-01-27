class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :terrain
      t.string :inhabitants
      t.text :img_url

      t.timestamps
    end
  end
end
