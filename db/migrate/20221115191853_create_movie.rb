class CreateMovie < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :img_url
    end
  end
end
