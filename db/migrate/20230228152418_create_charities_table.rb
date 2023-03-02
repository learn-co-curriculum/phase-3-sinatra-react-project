class CreateCharitiesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :image
      t.string :location
      t.string :description
      t.integer :year_established
    end
  end
end
