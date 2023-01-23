class CreateFarms < ActiveRecord::Migration[6.1]
  def change
    create_table :Farms do |t|
      t.string :name
      t.string :location
      t.integer :rating
    end
  end
end
