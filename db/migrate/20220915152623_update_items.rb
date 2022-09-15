class UpdateItems < ActiveRecord::Migration[6.1]
  def change
    change_table :items do |t|
      t.string :image
      t.string :url
      t.string :recipe
      t.string :ingredients
      t.string :nutrients
    end
  end
end
