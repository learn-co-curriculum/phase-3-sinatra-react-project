class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_image_url
      t.integer :category_id
    end
  end
end
