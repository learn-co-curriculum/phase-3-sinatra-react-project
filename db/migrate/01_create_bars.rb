class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :category
      t.string :price
      t.string :closing_time
      t.string :location
    end
  end
end
