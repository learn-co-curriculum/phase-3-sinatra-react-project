class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity_name
      t.string :img_url
      t.text :description
      t.boolean :favorite
      t.references :mood
    end   
  end
end
