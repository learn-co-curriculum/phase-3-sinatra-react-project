class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :sighted
      t.string :image
      t.boolean :extinct
      t.string :scientific_name
    end
  end
end
