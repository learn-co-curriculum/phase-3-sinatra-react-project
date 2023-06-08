class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :image_url
      t.timestamps
    end
  end
end
