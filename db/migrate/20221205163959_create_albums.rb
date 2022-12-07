class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :image_url
      t.string :catalog_number
      t.belongs_to :review
      t.belongs_to :band
    end
  end
end
