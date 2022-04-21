class Books < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :author
      t.string :age_range
      t.integer :rating
      t.string :comment
      t.string :id_comments
      t.string :link
      t.string :photo

    end
  end
end
