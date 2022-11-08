class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.integer :price
      t.string :description
      t.integer :year_published
      t.integer :user_id
    end
  end
end
