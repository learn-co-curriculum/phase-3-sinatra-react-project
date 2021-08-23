class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :release_date
      t.integer :price
      t.integer :genre
      t.integer :company_id
    end
  end
end
