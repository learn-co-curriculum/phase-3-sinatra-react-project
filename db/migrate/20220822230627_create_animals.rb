class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :description
      t.string :image_url
      t.boolean :adopted?
      t.belongs_to :user
      t.timestamps
    end
  end
end
