class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :title
      t.boolean :favorite
      t.boolean :top3
    end
  end
end
