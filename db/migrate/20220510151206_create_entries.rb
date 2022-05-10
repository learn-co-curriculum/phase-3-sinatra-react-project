class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :song_name
      t.string :song_link
      t.string :comment
      t.integer :color_id
      t.integer :weather_id
    end 
  end
end


