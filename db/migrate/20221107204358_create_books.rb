class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.string :summary
      t.string :category
      t.string :image_url
      t.integer :price
  end
end
end
