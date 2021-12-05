class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :image_url
      t.integer :category_id


      t.timestamps
    end
  end
end

# Stretch Goals:
# t.formdata? (image upload)
# t.integer :price
# t.string :user_contact
