class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :image
      t.string :category
      t.string :price
      t.integer :closing_time
      t.string :location
      t.references :owner
    end
  end
end
