class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :quantity
    end
  end
end