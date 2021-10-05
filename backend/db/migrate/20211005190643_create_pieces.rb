class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :image
      t.datetime :date
      t.integer :price
      t.string :desc
      t.belongs_to :buyer
      t.belongs_to :seller
    end
  end
end
