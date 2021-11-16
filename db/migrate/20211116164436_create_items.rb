class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :product_description
      t.string :imgUrl
      t.belongs_to :user
    end
  end
end
