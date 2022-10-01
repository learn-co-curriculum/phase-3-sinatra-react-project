class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :page_count
      t.integer :publication_year
      t.boolean :library_availability
      t.string :image_url
    end
  end
end
