class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :image
      t.integer :likes
    end
  end
end
