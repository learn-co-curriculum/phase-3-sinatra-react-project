class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :filmography_count
      t.string :recent_title_year
      t.string :profile_image_url
      t.string :actor_name
    end
  end
end
