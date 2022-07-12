class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.references :user
      t.string :title
      t.string :author
      t.integer :star_rating
      t.string :comment
      t.string :image_url
      t.timestamps 
    end
  end
end
