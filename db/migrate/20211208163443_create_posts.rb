class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :header
      t.string :description
      t.string :image_url
      t.string :content_link
      t.integer :like_count
      t.references :user
      t.timestamps
    end
  end
end
