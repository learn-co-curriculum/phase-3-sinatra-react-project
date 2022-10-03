class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :publication_date
      t.string :link_to_article
      t.string :image_url
    end
  end
end
