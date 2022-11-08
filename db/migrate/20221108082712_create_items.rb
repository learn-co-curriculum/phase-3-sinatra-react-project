class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name 
      t.string :quantity
      t.integer :price
      t.string :description
    end
  end
end
