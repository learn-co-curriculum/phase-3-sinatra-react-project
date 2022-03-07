class CreatePlaylists < ActiveRecord::Migration[6.1]
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.timestamp :creation_date
      t.timestamp :last_update
      t.integer :duration
      t.string :name
    end
  end
end


