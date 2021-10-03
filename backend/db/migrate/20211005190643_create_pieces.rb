class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :image
      t.string :date
      t.string :artist
      t.string :medium
      t.string :dimensions
      t.string :city
      t.integer :price
      t.boolean :in_stock
      t.belongs_to :buyer
      t.belongs_to :seller
    end
  end
end
