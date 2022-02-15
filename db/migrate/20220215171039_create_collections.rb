class CreateCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :collections do |t|
      t.integer :category_id
      t.integer :product_id
    end
  end
end
