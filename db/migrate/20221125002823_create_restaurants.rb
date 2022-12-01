class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :tag
      t.string :logo_url
      t.timestamps
    end
  end
end
