class CreateListenEventsTable < ActiveRecord::Migration[6.1]
  def change
    create_table "listen_events" do |t|
      t.integer :album_id
      t.timestamps
    end
  end
end
